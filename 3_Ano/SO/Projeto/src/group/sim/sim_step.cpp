/*
 *  \author Bruno Ferreira Gomes nº 103320
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    bool handleArrivalEvent(FutureEvent fevent, uint32_t simTime)
    {
        // if the type of process is ARRIVAL, add it to the set of active processes
        ForthcomingProcess *process = simGetProcess(fevent.pid);
        pctInsert(process->pid, process->arrivalTime, process->lifetime, &process->addressSpace);

        //check for memory availability
        AddressSpaceMapping *mapping = memAlloc(process->pid, &process->addressSpace);  
        if(mapping == NULL_ADDRESS){ // memory block allocation is not possible at the moment (process must enter SWAPPED mode)
            swpAdd(process->pid, &process->addressSpace);
            pctUpdateState(process->pid, SWAPPED);
        }
        else if(mapping == IMPOSSIBLE_MAPPING){ // memory block allocation is not possible at all (process must be DISCARDED)
            pctUpdateState(process->pid, DISCARDED);
        }
        else{ // memory block allocation is possible (process must enter ACTIVE mode)
            feqInsert(TERMINATE, simTime + process->lifetime, process->pid);
            pctUpdateState(process->pid, ACTIVE, fevent.time, mapping);
        }
        return true;               
    }

    bool handleTerminateEvent(FutureEvent fevent, uint32_t simTime)
    {
        AddressSpaceMapping *mapping = pctGetAddressSpaceMapping(fevent.pid);
        memFree(mapping);
        pctUpdateState(fevent.pid, FINISHED);

        uint32_t i = 0;
        while (SwappedProcess *swpProcess = swpPeek(i)) { //if swpPeek(i) returns NULL the loop ends
            mapping = memAlloc(swpProcess->pid, pctGetAddressSpaceProfile(swpProcess->pid));

            if (mapping == NULL_ADDRESS) {
                i++;
            } 
            else {
                feqInsert(TERMINATE, simTime + pctGetLifetime(swpProcess->pid), swpProcess->pid);
                pctUpdateState(swpProcess->pid, ACTIVE, fevent.time, mapping);
                swpRemove(i);
                i = 0;
            }
        }

        return true;
    }




    bool simStep()
    {
        soProbe(107, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
       // throw Exception(ENOSYS, __func__);
        

        //check if feq is empty
        if(feqIsEmpty()){
            return false;
        }
        // get event from feq and process it
        FutureEvent fevent = feqPop();
        simTime++;
        stepCount++;

        switch(fevent.type){
            case ARRIVAL:
                return handleArrivalEvent(fevent, simTime);
            case TERMINATE:
                return handleTerminateEvent(fevent, simTime);
            default:
                return false;
        }

    }

// ================================================================================== //

} // end of namespace group


/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void pctUpdateState(uint32_t pid, ProcessState state, uint32_t time = NO_TIME, AddressSpaceMapping *mapping = NULL)
    {
        soProbe(309, "%s(%d, %u, %u)\n", __func__, pid, state, time);

        require(pid > 0, "a valid process ID must be greater than zero");
        require(state != ACTIVE || mapping != NULL , "ACTIVE or mapping != NULL");
        require(time >= 0, "time must be >= 0");

        /* TODO POINT: Replace next instruction with your code */
        PctNode *current = pctHead;
        while(current != NULL){
            if(current->pcb.pid == pid){
                current->pcb.state = state;
                if(state == ACTIVE){
                    current->pcb.activationTime = time;
                    current->pcb.memMapping = *mapping;
                }else if(state == FINISHED){
                    current->pcb.finishTime = time;
                }
                return;
            }
            current = current->next;
        }
        throw Exception(EINVAL, __func__);
    }

// ================================================================================== //

} // end of namespace group


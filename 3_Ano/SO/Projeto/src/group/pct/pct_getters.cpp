/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

    namespace group 
    {

// ================================================================================== //

    uint32_t pctGetLifetime(uint32_t pid)
    {
        soProbe(305, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* TODO POINT: Replace next instruction with your code */

        PctNode *current = pctHead;
        while(current != NULL){
            if(current->pcb.pid == pid){
                return current->pcb.lifetime;
            }
            current = current->next;
        }

        throw Exception(EINVAL,__func__);
    }

// ================================================================================== //

    AddressSpaceProfile *pctGetAddressSpaceProfile(uint32_t pid)
    {
        soProbe(306, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* TODO POINT: Replace next instruction with your code */
        
        PctNode *current = pctHead;
        while(current != NULL){
            if(current->pcb.pid == pid){
                return &(current->pcb.memProfile);
            }
            current = current->next;
        }

        throw Exception(EINVAL,__func__);
    }

// ================================================================================== //

    AddressSpaceMapping *pctGetAddressSpaceMapping(uint32_t pid)
    {
        soProbe(307, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        PctNode *current = pctHead;
        while(current != NULL){
            if(current->pcb.pid == pid){
                return &(current->pcb.memMapping);
            }
            current = current->next;
        }

        throw Exception(EINVAL,__func__);
    }

// ================================================================================== //

    const char *pctGetStateAsString(uint32_t pid)
    {
        soProbe(308, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        PctNode *current = pctHead;
        while(current != NULL){
            if(current->pcb.pid == pid){
                switch(current->pcb.state){
                    case NEW:
                        return "NEW";
                    case ACTIVE:
                        return "ACTIVE";
                    case SWAPPED:
                        return "SWAPPED";
                    case FINISHED:
                        return "FINISHED";
                    case DISCARDED:
                        return "DISCARDED";
                    default:
                        return "UNKNOWN";
                }
            }
            current = current->next;
        }

        throw Exception(EINVAL,__func__);
    }

// ================================================================================== //

} // end of namespace group


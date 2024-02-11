/*
 *  \author Bruno Ferreira Gomes nº 103320
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    void swpRemove(uint32_t idx)
    {
        soProbe(406, "%s(%u)\n", __func__, idx);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);
        SwpNode *temp = swpHead;
        uint32_t i = 0;
        while(temp->next != NULL)
        {
            if(i == idx)
            {
                SwpNode *temp2 = temp->next;
                temp->next = temp->next->next;
                free(temp2);
                return;
            }
            temp = temp->next;
            i++;
        }

    }

// ================================================================================== //

} // end of namespace group


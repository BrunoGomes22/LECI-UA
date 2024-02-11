/*
 *  \author Bruno Ferreira Gomes nº 103320
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    SwappedProcess *swpPeek(uint32_t idx)
    {
        soProbe(405, "%s(%u)\n", __func__, idx);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);
        SwpNode *temp = swpHead->next;
        uint32_t i = 0;
        while(temp != NULL)
        {
            if(i == idx)
            {
                return &temp->process;
            }
            temp = temp->next;
            i++;
        }
        return NULL;

    }

// ================================================================================== //

} // end of namespace group


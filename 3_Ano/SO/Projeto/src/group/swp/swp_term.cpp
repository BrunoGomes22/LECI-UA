/*
 *  \author Bruno Ferreira Gomes nº 103320
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    void swpTerm()
    {
        soProbe(402, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        while(swpHead != NULL)
        {
            SwpNode *temp = swpHead;
            swpHead = swpHead->next;
            free(temp);
        }
    }

// ================================================================================== //

} // end of namespace group


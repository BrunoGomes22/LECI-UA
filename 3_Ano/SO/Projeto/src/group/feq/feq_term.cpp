/*
 *  \author João Oliveira 102631
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void feqTerm() 
    {
        soProbe(202, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        while(feqHead != NULL){
            FeqEventNode *temp = feqHead->next;
            free(feqHead);
            feqHead = temp;
        }
    }

// ================================================================================== //

} // end of namespace group


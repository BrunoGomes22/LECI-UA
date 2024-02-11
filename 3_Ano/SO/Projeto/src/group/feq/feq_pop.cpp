/*
 *  \author João Oliveira 102631
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    FutureEvent feqPop()
    {
        soProbe(205, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        FeqEventNode *temp = feqHead->next;
        if(temp == NULL){
            temp = new FeqEventNode();
        }

        FutureEvent futEvn = feqHead->event;
        free(feqHead);
        feqHead = temp;
        return futEvn;
    }

// ================================================================================== //

    bool feqIsEmpty()
    {
        soProbe(206, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        return feqHead->event.pid == 0;
    }

// ================================================================================== //

} // end of namespace group


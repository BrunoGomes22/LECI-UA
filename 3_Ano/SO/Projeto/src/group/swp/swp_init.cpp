/*
 *  \author Bruno Ferreira Gomes nº 103320
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    /*
     * \brief Init the module's internal data structure
     */
    void swpInit()
    {
        soProbe(401, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);
        
        /*
        swpHead = new SwpNode();
        swpTail = new SwpNode();
        
        swpTail->next = NULL;
        swpHead->next = swpTail;
        */
        swpTail = new SwpNode();
        swpTail->next = NULL;
        swpHead = swpTail;
    }

// ================================================================================== //

} // end of namespace group


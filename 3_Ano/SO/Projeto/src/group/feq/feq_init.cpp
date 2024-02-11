/*
 *  \author João Oliveira 102631
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void feqInit()
    {
        soProbe(201, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        feqHead = new FeqEventNode();
    }

// ================================================================================== //

} // end of namespace group


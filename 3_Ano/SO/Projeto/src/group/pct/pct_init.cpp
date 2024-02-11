/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void pctInit() 
    {
        soProbe(301, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        // throw Exception(ENOSYS, __func__);

        
        // Initializes the internal data structure of the PCT module.
        //  The module's internal data structure, defined in file frontend/pct.cpp, should be initialized properly
        pctHead = NULL;
    }

// ================================================================================== //

} // end of namespace group


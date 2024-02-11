/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void simTerm() 
    {
        soProbe(102, "%s()\n", __func__);

    /*
    Reset the internal data structure of all module to the initial state.
    After calling the termination functions of the other modules, the supporting data structure must be reset to the initial state.
    */

    //terminate modules
    memTerm();
    feqTerm();
    pctTerm();
    swpTerm();
    
    //reset data structures
    forthcomingTable.count = 0;
    simTime = 0;
    stepCount = 0;
    
    }

// ================================================================================== //

} // end of namespace group


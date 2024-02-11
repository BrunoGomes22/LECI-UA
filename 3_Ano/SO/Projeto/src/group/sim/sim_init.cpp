/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    /*
     * \brief Init the module's internal data structure
     The module's internal data structure, defined in file frontend/sim.cpp, should be initialized properly. Additionally, the other modules should be also initialized.
     */
    void simInit(uint32_t mSize, uint32_t osSize, uint32_t cSize, AllocationPolicy policy)
    {
        const char *pas = policy == FirstFit ? "FirstFit" : policy == BuddySystem ? "BuddySystem" : "Unkown";
        soProbe(101, "%s(%#x, %#x, %#x, %s)\n", __func__, mSize, osSize, cSize, pas);

        //initialize data structures
        forthcomingTable.count = 0;

        simTime = 0;
        stepCount = 0;


        //initialize modules
        memInit(mSize, osSize, cSize, policy);
        feqInit();
        pctInit();
        swpInit();
    }

// ================================================================================== //

} // end of namespace group


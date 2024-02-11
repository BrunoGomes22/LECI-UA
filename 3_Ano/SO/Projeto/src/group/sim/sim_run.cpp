/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //
    
    void simRun(uint32_t cnt)
    {
        soProbe(108, "%s(%u)\n", __func__, cnt);

        /* This function just call the \c simStep a number of times. */
        if(cnt == 0){
            while(simStep());
        }else{
            for (uint32_t i = 0; i < cnt; i++)
                simStep();
        }
    }

// ================================================================================== //

} // end of namespace group


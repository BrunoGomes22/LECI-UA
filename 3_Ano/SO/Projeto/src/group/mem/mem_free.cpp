/*
 *  \author Luís Oliveira #98543
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void memFree(AddressSpaceMapping *mapping)
    {
        soProbe(507, "%s(mapping: %p)\n", __func__, mapping);

        require(mapping != NULL, "mapping must be a valid pointer to a AddressSpaceMapping");
        
        for (uint32_t i = 0; i < mapping->blockCount; i++) {
            Address addr = mapping->address[i];   
            
            try {
                if(memParameters.policy == FirstFit) {
                    memFirstFitFree(addr);
                } else if(memParameters.policy == BuddySystem) {
                    memBuddySystemFree(addr);
                }
            } catch (const std::exception& e) {
                // Handle the exception by throwing a custom exception
                throw Exception(errno, __func__);
            }
        }

    }

// ================================================================================== //

} // end of namespace group


/*
 *  \author Bruno Ferreira Gomes nº 103320
 *  \author Luís Oliveira #98543
 */
 

#include "somm23.h"
#include <math.h>

#include <stdint.h>

namespace group 
{

// ================================================================================== //
  
    AddressSpaceMapping *memAlloc(uint32_t pid, AddressSpaceProfile *profile)
    {
        soProbe(504, "%s(%u, %p)\n", __func__, pid, profile);

        require(pid > 0, "process ID must be non-zero");
        require(profile != NULL, "profile must be a valid pointer to an AddressSpaceProfile variable");

        /* The mapping to be filled and whose pointer should be returned */
        static AddressSpaceMapping theMapping = {0, {0}};

        /* TODO POINT: Replace next instructions with your code */
        uint32_t totalAllocatedSize = 0;
        for(uint32_t i = 0; i<profile->segmentCount; i++){  //Each segment size must be rounded up to the smallest multiple of the chunk size.
            profile->size[i] = (uint32_t)ceil((double)profile->size[i] / memParameters.chunkSize)*memParameters.chunkSize;
            totalAllocatedSize += profile->size[i];

            if(totalAllocatedSize > memParameters.totalSize-memParameters.kernelSize){ //If the memory required to allocate the whole address space exceds the total memory for processes, IMPOSSIBLE_MAPPING should be returned.
                    return IMPOSSIBLE_MAPPING;
            }
        }

        theMapping = {0, {0}};
        // For each segment of the given profile, following the profile order, the appropriate block allocation function must be called, in order to fill an address space mapping.
        
        for(uint32_t i = 0; i<profile->segmentCount; i++){
            Address address;
            if(memParameters.policy == FirstFit){
                address = memFirstFitAlloc(pid, profile->size[i]);
            }
            else{
                address = memBuddySystemAlloc(pid, profile->size[i]);
            }
            if(address == NULL_ADDRESS){ //If one of the segments fail to be allocated, the function should free the previously allocated blocks, before return NO_MAPPING.
                memFree(&theMapping);
                return NO_MAPPING;
            }
            theMapping.blockCount++;
            theMapping.address[i] = address;
 
        }
        
        return &theMapping;
    }

// ================================================================================== //

} // end of namespace group


/*
 *  \author Francisco Cardita (97640)
 */

#include "somm23.h"

#include <stdint.h>

namespace group
{

    // ================================================================================== //

    void memInit(uint32_t mSize, uint32_t osSize, uint32_t cSize, AllocationPolicy policy)
    {
        const char *pas = policy == FirstFit ? "FirstFit" : policy == BuddySystem ? "BuddySystem"
                                                                                  : "Unkown";
        soProbe(501, "%s(%#x, %#x, %#x, %s)\n", __func__, mSize, osSize, cSize, pas);

        require(mSize > osSize, "memory must be bigger than the one use by OS");
        require((mSize % cSize) == 0, "memory size must be a multiple of chunck size");
        require((osSize % cSize) == 0, "memory size for OS must be a multiple of chunck size");
        require(policy == FirstFit or policy == BuddySystem, "policy must be FirstFit or BuddySystem");

        memParameters.totalSize = mSize;
        memParameters.kernelSize = osSize;
        memParameters.chunkSize = cSize;
        memParameters.policy = policy;

        uint32_t availableSize = memParameters.totalSize - memParameters.kernelSize;

        if (policy == FirstFit)
        {
            memTreeRoot = NULL;
            memFreeHead = new MemListNode;
            memFreeHead->block.pid = 0;
            memFreeHead->block.size = availableSize;
            memFreeHead->block.address = memParameters.kernelSize;

            memOccupiedHead = new MemListNode;
            memOccupiedHead->next = NULL;
            memOccupiedHead->prev = NULL;
        }
        else if (policy == BuddySystem)
        {
            memFreeHead = NULL;
            memOccupiedHead = NULL;
            memTreeRoot = new MemTreeNode;
            memTreeRoot->state = FREE;
            memTreeRoot->block.pid = 0;

            // Set blockSize to nearest power of 2
            uint32_t blockSize = 1;
            while (blockSize < memParameters.totalSize / 2)
            {
                blockSize *= 2;
            }
            memTreeRoot->block.size = blockSize;

            memTreeRoot->block.address = memParameters.kernelSize;
            memTreeRoot->left = NULL;
            memTreeRoot->right = NULL;
        }
    }

    // ================================================================================== //

} // end of namespace group=========================================== //

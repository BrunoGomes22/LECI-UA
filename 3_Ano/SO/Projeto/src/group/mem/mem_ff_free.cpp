/*
 *  \author Francisco Cardita (97640)
 */

#include "somm23.h"

#include <stdint.h>

namespace group
{

    // ================================================================================== //

    void memFirstFitFree(Address address)
    {
        soProbe(508, "%s(%u)\n", __func__, address);

        require(memOccupiedHead != NULL, "Occupied list should contain nodes");

        MemListNode *freedBlock = memOccupiedHead;
        MemListNode *prev = nullptr;

        while (freedBlock != nullptr && freedBlock->block.address != address)
        {
            prev = freedBlock;
            freedBlock = freedBlock->next;
        }

        if (freedBlock == nullptr)
            throw Exception(EINVAL, __FUNCTION__);

        if (prev == nullptr)
            memOccupiedHead = freedBlock->next;
        else
            prev->next = freedBlock->next;

        // Insertion
        MemListNode *currentFreeBlock = memFreeHead;
        MemListNode *prevFreeBlock = nullptr;

        while (currentFreeBlock != nullptr && currentFreeBlock->block.address < freedBlock->block.address)
        {
            prevFreeBlock = currentFreeBlock;
            currentFreeBlock = currentFreeBlock->next;
        }

        if (prevFreeBlock == nullptr)
        {
            freedBlock->next = memFreeHead;
            memFreeHead = freedBlock;
        }
        else
        {
            freedBlock->next = currentFreeBlock;
            prevFreeBlock->next = freedBlock;
        }

        // Merge with previous
        if (prevFreeBlock != nullptr && prevFreeBlock->block.address + prevFreeBlock->block.size == freedBlock->block.address)
        {
            prevFreeBlock->block.size += freedBlock->block.size;
            prevFreeBlock->next = freedBlock->next;
            delete freedBlock;
            freedBlock = prevFreeBlock;
        }

        // Merge with next
        if (freedBlock->next != nullptr && freedBlock->block.address + freedBlock->block.size == freedBlock->next->block.address)
        {
            freedBlock->block.size += freedBlock->next->block.size;
            MemListNode *tmp = freedBlock->next;
            freedBlock->next = freedBlock->next->next;
            delete tmp;
        }
    }

    // ================================================================================== //

} // end of namespace group

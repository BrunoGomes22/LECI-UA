/*
 *  \author Francisco Cardita (97640)
 */

#include "somm23.h"

#include <stdint.h>

namespace group
{

    // ================================================================================== //

    Address memFirstFitAlloc(uint32_t pid, uint32_t size)
    {
        soProbe(505, "%s(%u, %#x)\n", __func__, pid, size);

        require(pid > 0, "a valid process ID must be greater than zero");
        require(size, "the size of a memory segment must be greater then zero");

        MemListNode *current = memFreeHead;
        MemListNode *newBlock = nullptr;

        while (current != nullptr)
        {
            if (current->block.size >= size)
            {
                newBlock = new MemListNode;
                newBlock->block.pid = pid;
                newBlock->block.size = size;
                newBlock->block.address = current->block.address;

                current->block.size -= size;
                current->block.address += size;

                break;
            }

            current = current->next;
        }

        if (newBlock != nullptr)
        {
            MemListNode *prevOccBlock = nullptr;
            MemListNode *currentOccBlock = memOccupiedHead;

            while (currentOccBlock != nullptr && currentOccBlock->block.address < newBlock->block.address)
            {
                prevOccBlock = currentOccBlock;
                currentOccBlock = currentOccBlock->next;
            }

            if (prevOccBlock == nullptr)
            {
                newBlock->next = memOccupiedHead;
                memOccupiedHead = newBlock;
            }
            else
            {
                newBlock->next = currentOccBlock;
                prevOccBlock->next = newBlock;
            }

            return newBlock->block.address;
        }
        else
            throw Exception(ENOMEM, __func__);
    }

    // ================================================================================== //

} // end of namespace group

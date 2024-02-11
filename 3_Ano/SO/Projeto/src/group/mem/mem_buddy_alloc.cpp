/*
 *  \author Luís Oliveira #98543
 */

#include "somm23.h"
#include <stdint.h>

namespace group
{
    Address allocateBlock(MemTreeNode *node, uint32_t size, uint32_t pid);
    void splitBlock(MemTreeNode *node);
    Address memBuddySystemAlloc(uint32_t pid, uint32_t size)
    {
        soProbe(506, "%s(%u, %#x)\n", __func__, pid, size);
        require(pid > 0, "a valid process ID must be greater than zero");
        require(size, "the size of a memory segment must be greater than zero");
        return allocateBlock(memTreeRoot, size, pid);
    }
    Address allocateBlock(MemTreeNode *node, uint32_t size, uint32_t pid)
    {
        if (node == nullptr || node->state == OCCUPIED || node->block.size < size)
        {
            return NULL_ADDRESS;
        }
        if (node->state == FREE)
        {
            if (node->block.size == size || node->block.size / 2 < size)
            {
                node->state = OCCUPIED;
                node->block.pid = pid;
                return node->block.address;
            }
            splitBlock(node);
            Address address = allocateBlock(node->left, size, pid);
            if (address != NULL_ADDRESS)
            {
                return address;
            }
            return allocateBlock(node->right, size, pid);
        }
        else
        {
            Address address = allocateBlock(node->left, size, pid);
            if (address != NULL_ADDRESS)
            {
                return address;
            }
            return allocateBlock(node->right, size, pid);
        }
        throw Exception(ENOMEM, __FUNCTION__);
    }

    void splitBlock(MemTreeNode *node)
    {
        MemTreeNode *leftChild = new MemTreeNode;
        MemTreeNode *rightChild = new MemTreeNode;
        node->state = SPLITTED;
        node->left = leftChild;
        node->right = rightChild;
        uint32_t subBlockSize = node->block.size / 2;
        leftChild->state = FREE;
        leftChild->block.size = subBlockSize;
        leftChild->block.address = node->block.address;
        rightChild->state = FREE;
        rightChild->block.size = subBlockSize;
        rightChild->block.address = node->block.address + subBlockSize;
    }
}

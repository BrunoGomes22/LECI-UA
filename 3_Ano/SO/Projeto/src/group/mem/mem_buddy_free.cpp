/*
 *  \author Luís Oliveira #98543
 */

#include "somm23.h"
#include <stdint.h>
namespace group
{

    void freeBlock(MemTreeNode *node, Address address);
    
    void memBuddySystemFree(Address address)
    {
        soProbe(509, "%s(%u)\n", __func__, address);
        require(address != NULL_ADDRESS, "Invalid address");
        if (!(address > 0))
        {
            throw Exception(EINVAL, __func__);
        }
        freeBlock(memTreeRoot, address);
    }

    void freeBlock(MemTreeNode *node, Address address)
    {
        if (node == nullptr)
        {
            return;
        }
        if ((node->state == OCCUPIED && node->block.address == address) || (node->state == SPLITTED && node->left->state == OCCUPIED && node->left->block.address == address))
        {
            node->state = FREE;
            return;
        }
        freeBlock(node->left, address);
        freeBlock(node->right, address);
    }
}

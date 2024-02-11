/*
 *  \author Francisco Cardita (97640)
 */

#include "somm23.h"

void releaseTreeMem(MemTreeNode *node)
{
    if (node == nullptr)
        return;

    releaseTreeMem(node->left);
    releaseTreeMem(node->right);

    delete node;
}
namespace group
{

    // ================================================================================== //

    void memTerm()
    {
        soProbe(502, "%s()\n", __func__);

        if (memParameters.policy == FirstFit)
        {
            MemListNode *current = memFreeHead;
            while (current != nullptr)
            {
                MemListNode *next = current->next;
                delete current;
                current = next;
            }

            current = memOccupiedHead;
            while (current != nullptr)
            {
                MemListNode *next = current->next;
                delete current;
                current = next;
            }
        }
        else if (memParameters.policy == BuddySystem)
        {
            releaseTreeMem(memTreeRoot);
        }

        memParameters.totalSize = 0;
        memParameters.kernelSize = 0;
        memParameters.chunkSize = 0;

        memFreeHead = nullptr;
        memOccupiedHead = nullptr;
        memTreeRoot = nullptr;
    }

    // ================================================================================== //

} // end of namespace group

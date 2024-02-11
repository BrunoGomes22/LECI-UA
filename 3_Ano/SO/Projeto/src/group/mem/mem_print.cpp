/*
 *  \author Francisco Cardita (97640)
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

void printFirstFit(FILE *fout)
{
    MemListNode *memFree = memFreeHead;
    MemListNode *memOcc = memOccupiedHead;

    fprintf(fout, "+====================================+\n");
    fprintf(fout, "|   FirstFit memory occupied blocks  |\n");
    fprintf(fout, "+---------+-------------+------------+\n");
    fprintf(fout, "|   PID   |   address   |    size    |\n");
    fprintf(fout, "+---------+-------------+------------+\n");

    while (memOcc != NULL)
    {
        if (memOcc->block.pid != 0)
            fprintf(fout, "| %7d | %#11x | %10d |\n", memOcc->block.pid, memOcc->block.address, memOcc->block.size);
        memOcc = memOcc->next;
    }

    fprintf(fout, "+====================================+\n\n");

    fprintf(fout, "+====================================+\n");
    fprintf(fout, "|     FirstFit memory free blocks    |\n");
    fprintf(fout, "+---------+-------------+------------+\n");
    fprintf(fout, "|   PID   |   address   |    size    |\n");
    fprintf(fout, "+---------+-------------+------------+\n");

    while (memFree != NULL)
    {
        fprintf(fout, "|   ---   | %#11x | %10d |\n", memFree->block.address, memFree->block.size);
        memFree = memFree->next;
    }

    fprintf(fout, "+====================================+\n\n");
}

void printBuddySystemOcc(FILE *fout, MemTreeNode *node)
{
    if (node == NULL)
        return;

    if (node->state == OCCUPIED)
        fprintf(fout, "| %7d | %#11x | %10d |\n", node->block.pid, node->block.address, node->block.size);

    printBuddySystemOcc(fout, node->left);
    printBuddySystemOcc(fout, node->right);
}

void printBuddySystemFree(FILE *fout, MemTreeNode *node)
{
    if (node == NULL)
        return;

    if (node->state == FREE)
        fprintf(fout, "|   ---   | %#11x | %10d |\n", node->block.address, node->block.size);

    printBuddySystemFree(fout, node->left);
    printBuddySystemFree(fout, node->right);
}

void printBuddySystem(FILE *fout)
{
    MemTreeNode *memTree = memTreeRoot;

    if (memTree == NULL)
        return;

    fprintf(fout, "+====================================+\n");
    fprintf(fout, "| BuddySystem memory occupied blocks |\n");
    fprintf(fout, "+---------+-------------+------------+\n");
    fprintf(fout, "|   PID   |   address   |    size    |\n");
    fprintf(fout, "+---------+-------------+------------+\n");

    printBuddySystemOcc(fout, memTree);

    fprintf(fout, "+====================================+\n\n");

    fprintf(fout, "+====================================+\n");
    fprintf(fout, "|   BuddySystem memory free blocks   |\n");
    fprintf(fout, "+---------+-------------+------------+\n");
    fprintf(fout, "|   PID   |   address   |    size    |\n");
    fprintf(fout, "+---------+-------------+------------+\n");

    printBuddySystemFree(fout, memTree);

    fprintf(fout, "+====================================+\n\n");
}

namespace group
{

    // ================================================================================== //

    void memPrint(FILE *fout)
    {
        soProbe(503, "%s(\"%p\")\n", __func__, fout);

        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        if (memParameters.policy == FirstFit)
            printFirstFit(fout);

        else if (memParameters.policy == BuddySystem)
            printBuddySystem(fout);
    }

    // ================================================================================== //

} // end of namespace group

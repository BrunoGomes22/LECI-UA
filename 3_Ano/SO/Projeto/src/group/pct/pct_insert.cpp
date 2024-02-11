/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void pctInsert(uint32_t pid, uint32_t time, uint32_t lifetime, AddressSpaceProfile *profile)
    {
        soProbe(304, "%s(%d, %u, %u, %p)\n", __func__, pid, time, lifetime, profile);

        require(pid > 0, "a valid process ID must be greater than zero");
        require(time >= 0, "time must be >= 0");
        require(lifetime > 0, "lifetime must be > 0");
        require(profile != NULL, "profile must be a valid pointer to a AddressSpaceProfile");

        //check if pid is already in the PCT
        PctNode *node = pctHead;
        while (node != NULL) {
            if (node->pcb.pid == pid) {
                throw Exception(EINVAL, __FUNCTION__);
            }
            node = node->next;
        }
        
        // Create a new PctBlock instance
        PctBlock newBlock;
        newBlock.pid = pid;
        newBlock.state = NEW;
        newBlock.arrivalTime = time;
        newBlock.lifetime = lifetime;
        newBlock.activationTime = NO_TIME;
        newBlock.finishTime = NO_TIME;
        newBlock.memProfile = *profile;
        newBlock.memMapping = AddressSpaceMapping();

        // Create a new PctNode instance
        PctNode *newNode = new PctNode;
        newNode->pcb = newBlock;
        newNode->next = NULL;
        
        // Link the new PctNode into the PCT linked list
        if (pctHead == NULL) {
            // The list is empty, so the new node becomes the head
            pctHead = newNode;
        } else {
            // The list is not empty, so find the end of the list and add the new node there
            PctNode *current = pctHead;
            while (current->next != NULL) {
                current = current->next;
            }
            current->next = newNode;
        }

    }

// ================================================================================== //

} // end of namespace group


/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

void pctPrint(FILE *fout)
{
    soProbe(303, "%s(\"%p\")\n", __func__, fout);

    require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

    // Print the header row of the table
    fprintf(fout, "+====================================================================================================================================================+\n");
    fprintf(fout, "|                                                                  Process Control Table                                                             |\n");
    fprintf(fout, "+-------+-----------+---------+----------+---------+---------+---------------------------------------+-----------------------------------------------+\n");
    fprintf(fout, "|  PID  |   state   | arrival | lifetime | active  | finish  |         address space profile         |             address space mapping             |\n");
    fprintf(fout, "+-------+-----------+---------+----------+---------+---------+---------------------------------------+-----------------------------------------------+\n");

    // Iterate over the linked list of PctNode structures
    PctNode *current = pctHead;
    while (current != NULL) { 


        // For each PctNode, print the fields of its PctBlock in the appropriate format
        fprintf(fout, "| %5d | %-9s | %7d | %8d | ",
            current->pcb.pid,
            
            pctGetStateAsString(current->pcb.pid),
            current->pcb.arrivalTime,
            //current->pcb.lifetime, 
            pctGetLifetime(current->pcb.pid)
        );

        // Print the activation and finish times, or a placeholder if they are not yet defined
        if(current->pcb.activationTime == -1){
            fprintf(fout, "  ---   | ");
        }else{
            fprintf(fout, "%7d | ", current->pcb.activationTime);
        };

        if(current->pcb.finishTime == -1){
            fprintf(fout, "  ---   | ");
        }else{
            fprintf(fout, "%7d | ", current->pcb.finishTime);
        };

        AddressSpaceProfile *address = pctGetAddressSpaceProfile(current->pcb.pid);
        //gets values from the address space profile
            
        uint32_t* size = address->size;
        uint32_t segmentCount = address->segmentCount;

        for (uint32_t i = 0; i < segmentCount; i++) {
            fprintf(fout, "%7d : ", size[i]);
        }
        
        // Print the placeholder for the missing segment
        if (segmentCount < MAX_BLOCKS) {
            for (uint32_t i = segmentCount; i < MAX_BLOCKS; i++){
                fprintf(fout, "  ---  ");
                if (i < MAX_BLOCKS - 1){
                    fprintf(fout, " : ");}
            }
        }

        fprintf(fout, " | ");

        AddressSpaceMapping *mapping = pctGetAddressSpaceMapping(current->pcb.pid);
        uint32_t blockCount = mapping->blockCount;
        Address* address2 = mapping->address;

        for (uint32_t i = 0; i < blockCount; i++) {
            fprintf(fout, "%7d : ", address2[i]);
        }

        // Print the placeholder for the missing block
        if (blockCount < MAX_BLOCKS) {
            for (uint32_t i = blockCount; i < MAX_BLOCKS; i++){
                fprintf(fout, "   ---   ");
                //if not the last print the separator
                if (i < MAX_BLOCKS - 1){
                    fprintf(fout, " : ");}
            }
                
        }

        fprintf(fout, " |\n");


        // Move to the next node
        current = current->next;
    }

    // Print the footer row of the table
    fprintf(fout, "+====================================================================================================================================================+\n\n");
}
// ================================================================================== //

} // end of namespace group


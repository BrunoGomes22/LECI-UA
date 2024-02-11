/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void simPrint(FILE *fout)
    {
        soProbe(103, "%s(\"%p\")\n", __func__, fout);

        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        fprintf(fout, "+====================================================================+\n");
        fprintf(fout, "|                          forthcomingTable                          |\n");
        fprintf(fout, "+-------+---------+----------+---------------------------------------+\n");
        fprintf(fout, "|    Simulation step: %6u |              Simulation time:  %6u |\n", stepCount, simTime);
        fprintf(fout, "+-------+---------+----------+---------------------------------------+\n");
        fprintf(fout, "|  PID  | arrival | lifetime |         address space profile         |\n");
        fprintf(fout, "+-------+---------+----------+---------------------------------------+\n");


        for (uint32_t i = 0; i < forthcomingTable.count; i++) {
            fprintf(fout, "| %5d | %7d | %8d | ",
                forthcomingTable.process[i].pid,
                forthcomingTable.process[i].arrivalTime,
                forthcomingTable.process[i].lifetime
            );

            AddressSpaceProfile *address = &forthcomingTable.process[i].addressSpace;
            //gets values from the address space profile
                
            uint32_t* size = address->size;
            uint32_t segmentCount = address->segmentCount;

            for (uint32_t i = 0; i < segmentCount; i++) {
                fprintf(fout, "%7d", size[i]);

                if (i < MAX_SEGMENTS - 1) {
                    fprintf(fout, " : ");
                }
            }

            //print placeholder if segments are missing
            for(uint32_t i = segmentCount; i < MAX_SEGMENTS; i++){
                fprintf(fout, "  ---  ");

                if (i < MAX_SEGMENTS - 1) {
                    fprintf(fout, " : ");
                }
            }


            
            fprintf(fout, " |\n");
        }


        fprintf(fout, "+====================================================================+\n\n");
    }

// ================================================================================== //

} // end of namespace group


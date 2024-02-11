/*
 *  \author Bruno Ferreira Gomes nº 103320
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //
    void swpPrintHeader(FILE *file);
    void swpPrint(FILE *fout)
    {
        soProbe(403, "%s(\"%p\")\n", __func__, fout);

        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");
        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);
        
        swpPrintHeader(fout);
        
        SwpNode *aux = swpHead;
        uint32_t i = 0;

        while(aux->next != NULL){
            aux = aux->next;
            printf("| %5u |", aux->process.pid);
            for(i = 0; i< aux->process.profile.segmentCount; i++){
                if(i == aux->process.profile.segmentCount - 1)
                    printf(" %7u |", aux->process.profile.size[i]);
                else 
                    printf(" %7u :", aux->process.profile.size[i]);
                
            }

            for (; i < MAX_BLOCKS; i++) {
                if(i == MAX_BLOCKS - 1)
                    printf("   ---   |");
                else
                    printf("   ---   :");
            }

            printf("\n");
            
        }

        fprintf(fout, "+===============================================+\n");

    }     
 
    void swpPrintHeader(FILE *file) {
        fprintf(file, "+===============================================+\n");
        fprintf(file, "|             Swapped Process Queue             |\n");
        fprintf(file, "+-------+---------------------------------------+\n");
        fprintf(file, "|  PID  |         address space profile         |\n");
        fprintf(file, "+-------+---------------------------------------+\n");
    }

// ================================================================================== //

} // end of namespace group


/*
 *  \author João Oliveira 102631
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //
    void feqPrintHeader(FILE *file);
    void feqPrint(FILE *fout)
    {
        soProbe(203, "%s(\"%p\")\n", __func__, fout);

        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        feqPrintHeader(fout);

        FeqEventNode *temp = new FeqEventNode;
        temp = feqHead;
        const char *ty;
        while(temp != NULL && temp->event.pid != 0){

            switch(temp->event.type){
                case ARRIVAL:
                    ty = "ARRIVAL";
                break;

                case TERMINATE:
                    ty = "TERMINATE";
                break;

                default:
                    ty = "UNKNOWN";
                break;
            }

            fprintf(fout, "| %8u | %-9s | %5u |\n", temp->event.time, ty, temp->event.pid);

            temp = temp->next;
        }

        fprintf(fout, "+==============================+\n\n");

    }

    void feqPrintHeader(FILE *file){
        fprintf(file, "+==============================+\n");
        fprintf(file, "|      Future Event Queue      |\n");
        fprintf(file, "+----------+-----------+-------+\n");
        fprintf(file, "|   time   |   type    |  PID  |\n");
        fprintf(file, "+----------+-----------+-------+\n");
    }

// ================================================================================== //

} // end of namespace group


/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void pctTerm() 
    {
        soProbe(302, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        PctNode *current = pctHead;

        while(current != NULL){
            PctNode *next = current->next;

            free(current);  // free ? delete ? qual é a função a usar?
            

            current = next;
        }

        pctHead = NULL;
    }   

// ================================================================================== //

} // end of namespace group


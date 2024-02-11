/*
 *  \author João Oliveira 102631
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void nodeInit(FutureEventType type, uint32_t time, uint32_t pid, FeqEventNode *node);
    void feqInsert(FutureEventType type, uint32_t time, uint32_t pid)
    {
        const char *tas = type == ARRIVAL ? "ARRIVAL" : type == TERMINATE ? "TERMINATE" : "UNKOWN";
        soProbe(204, "%s(%s, %u, %u)\n", __func__, tas, time, pid);

        require(pid > 0, "process ID must be non-zero");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        FeqEventNode *newNode = new FeqEventNode; //node to be inseted
        nodeInit(type, time, pid, newNode);

        FeqEventNode *temp = new FeqEventNode;
        temp = feqHead;

        //insert node in an empty list
        if(feqHead->event.pid == 0){
            nodeInit(type, time, pid, feqHead);
        }

        

        while(temp->next != NULL){
            if(temp->event.time > newNode->event.time){ //sort by time
                newNode->next = temp;
                temp = newNode;
                break;
            }

            if(temp->event.time == newNode->event.time && temp->event.type == ARRIVAL && newNode->event.type == TERMINATE){ //sort by type
                newNode->next = temp;
                temp = newNode;
                break;
            }else if(temp->next == NULL || (temp->next->event.time>newNode->event.time)){
                newNode->next = temp->next;
                temp->next = newNode;
                break;
            }

            temp = temp->next;
        }

        if(temp->next == NULL){
            temp->next = newNode;
        }

    }

    void nodeInit(FutureEventType type, uint32_t time, uint32_t pid, FeqEventNode *node) {
        node->event.type = type;
        node->event.time = time;
        node->event.pid = pid;
    }


// ================================================================================== //

} // end of namespace group


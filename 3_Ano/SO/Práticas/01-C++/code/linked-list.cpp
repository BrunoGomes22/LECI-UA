#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "linked-list.h"

namespace base {

   Node* destroy(Node* list)
   {
      while (list != NULL)
      {
         Node* next = list->next;
         free(list->reg.name);
         free(list);
         list = next;
      }  
      return list;
   }

   Node* append(Node* list, uint32_t nmec, char *name)
   {
      
      Node* new_node = (Node*) malloc(sizeof(Node));
      if (new_node == NULL)
      {
         fprintf(stderr, "Error allocating memory %s\n", strerror(errno));
         return NULL;
      }


      new_node->reg.nmec = nmec;
      new_node->reg.name = strdup(name);  //aloca memória e copia a string
      new_node->next = NULL;

      //last node should be pointing to the new node
      if(list == NULL)
      {
         list = new_node;
      }
      else
      {
         Node* last_node = list;
         while(last_node->next != NULL)
         {
            last_node = last_node->next;
         }
         last_node->next = new_node;
      }
      return list;
   }

   void print(Node* list)
   {
      for(Node* node = list; node != NULL; node = node->next){
         printf("%d %s\n", node->reg.nmec, node->reg.name);
      }
   }

   int exists(Node* list, uint32_t nmec)  // retorna 0 (false) se não existe, 1 (true) se existe
   {
      if(list != NULL)
      {
         for(Node* node = list; node != NULL; node = node->next)
         {
            if(node->reg.nmec == nmec)
               return 1;
         }
      }

      return 0;
   }

   Node* remove(Node* list, uint32_t nmec)
   {
      if(list != NULL)
      {
         Node* prev = NULL;
         Node* node = list;

         while(node != NULL)
         {
            if(node->reg.nmec == nmec)
            {
               if(prev == NULL)
               {
                  list = node->next;
                  free(node->reg.name);
                  free(node);
                  return list;
               }
               else
               {
                  prev->next = node->next;
                  free(node->reg.name);
                  free(node);
                  return list;
               }
            }
            prev = node;
            node = node->next;
         }
      }
      return NULL;
   }

   const char *search(Node* list, uint32_t nmec)
   {
      if(list != NULL){
         for(Node* node = list; node!=NULL; node = node->next){
            if(node->reg.nmec == nmec){
               return node->reg.name;
            }
         }
      }

      return NULL;
   }

   Node* sort_by_name(Node* list)
   {

      for(Node* node = list; node != NULL; node = node->next)
      {
         for(Node* node2 = node->next; node2 != NULL; node2 = node2->next)
         {
            if(strcmp(node->reg.name, node2->reg.name) > 0)
            {
               char* aux = node->reg.name;
               node->reg.name = node2->reg.name;
               node2->reg.name = aux;
            }
         }
      }

      return list;
   }

   Node* sort_by_number(Node* list)
   {
      for(Node* node = list; node != NULL; node = node->next)
      {
         for(Node* node2 = node->next; node2 != NULL; node2 = node2->next)
         {
            if(node->reg.nmec > node2->reg.nmec)
            {
               uint32_t aux = node->reg.nmec;
               node->reg.nmec = node2->reg.nmec;
               node2->reg.nmec = aux;
            }
         }
      }
      return list;
   }
}

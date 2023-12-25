//
// Tomás Oliveira e Silva, AED, November 2021
//
// Generic queue (First In First Out) implementation based on an linked list
//

#ifndef _AED_lQueue_
#define _AED_lQueue_

#include <cassert>
#include "sList.h"

template <typename T> //tipo genérico
class lQueue
{
  private:
    sList <T> list; //declarar a lista
  public:
    lQueue(void) //construtor
    {
    }
    ~lQueue(void) //deconstrutor
    {
    }
    void clear(void)
    {
      while(list.size()>0){
        list.remove_head();
      }
    }
    int size(void) const
    {
      return list.size();
    }
    int is_full(void) const
    {
      return 0;
    }
    int is_empty(void) const
    {
      return list.size() == 0;
    }
    void enqueue(T &v) // & call by reference
    {
      list.insert_after_tail(v); 
    }
    T dequeue(void)
    {
      assert(list.size()>0);
      list.move(0);
      T v = list.value();
      list.remove_head();
      return v;
    }
    T peek(void)
    {
      assert(list.size>0); //pre-conditon
      list.move(0);
      return list.value();
    }
};

#endif

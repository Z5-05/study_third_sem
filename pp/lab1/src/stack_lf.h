#ifndef STACK_H
#define STACK_H

#include "node.h"
#include <atomic>
#include <optional>
#include <cstddef>
#include <iostream>

template <typename T>
class Stack_lf {
    public:
        tagged_ptr<T> head;
        
        /* methods */
        void push(T);
        void pop();
        bool isEmpty();
        T top();

        Stack_lf();
        ~Stack_lf();
};

#endif // STACK_H
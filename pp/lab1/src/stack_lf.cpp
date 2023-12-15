/* 
Source: 1) https://en.cppreference.com/w/cpp/atomic/atomic/compare_exchange;
        2) https://neerc.ifmo.ru/wiki/index.php?title=%D0%A1%D1%82%D0%B5%D0%BA_%D0%A2%D1%80%D0%B0%D0%B9%D0%B1%D0%B5%D1%80%D0%B0;
        3) https://stackoverflow.com/questions/33489611/how-can-i-prevent-undefined-behavior-and-the-aba-issue-in-this-lock-free-stack-f;
        4) https://lumian2015.github.io/lockFreeProgramming/aba-problem.html;
        5) https://habr.com/ru/articles/202190/;
        6) https://dev.to/pauljlucas/advanced-thread-safety-in-c-3ap5.

*/

#include "stack_lf.h"

using namespace std;

template <typename T>
Stack_lf<T>::Stack_lf() {
    this->head = new tagged_ptr<Node<T>>();
}

template <typename T>
void Stack_lf<T>::push(T value) {
    Stack_lf next, orig = this.load(std::memory_order_relaxed);
    Node<T> *new_node = new Node<T>;
    new_node->value = value;
    do {
        new_node->next = this.head;
        next.head = new_node;
        next.tag = orig.tag + 1;
    }
    while (!this.compare_exchange_weak(
                &orig, 
                next));
}

template <typename T>
void Stack_lf<T>::pop() {
    Stack_lf next, orig = this.load(std::memory_order_relaxed);
    do 
    {
        if (orig.head == NULL)
            return;
    
    next.head = orig.head->next;
    next.tag = orig.tag+1;
    } while (!this.compare_exchange_weak(&orig, next));
}

template <typename T>
bool Stack_lf<T>::isEmpty() {
    return this.load(std::memory_order_relaxed)->head ? true : false;
}

template <typename T>
T Stack_lf<T>::top() {  
    return this.load(std::memory_order_relaxed)->head->value;
}

template <typename T>
Stack_lf<T>::~Stack_lf() {
    // tagged_ptr<Node<T>> curr_node = head;
    // tagged_ptr<Node<T>> temp_node;
    // while (curr_node)
    // {
    //     temp_node = curr_node;
    //     curr_node = curr_node->next;
    //     /* deleting */
    //     delete temp_node;
    //     temp_node = nullptr;
    // }
    return;
}
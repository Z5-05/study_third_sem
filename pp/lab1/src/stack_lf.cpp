#include "stack_lf.h"

using namespace std;

template <typename T>
Stack_lf<T>::Stack_lf() : head(nullptr) {}

template <typename T>
void Stack_lf<T>::push(const T& value) {
    Node<T>* new_node = new Node<T>(value, this->head.load());
    while (!this->head.compare_exchange_weak(
                new_node->next, 
                new_node));
}

template <typename T>
void Stack_lf<T>::pop() {
    Node<T>* head = this->head.load();

    if (head == nullptr)
        return;

    Node<T>* new_head = head->next;
    while (!this->head.compare_exchange_weak(head, new_head))
    {
        if (head == nullptr)
            return;
        new_head = head->next;
    }
    delete head;
}

template <typename T>
bool Stack_lf<T>::isEmpty() {
    return this->head.load() ? true : false;
}

template <typename T>
std::optional<T> Stack_lf<T>::top() {
	Node<T>* head = this->head.load();

	if (head == nullptr)
	    return std::optional<T>();

	return std::optional<T>(head->value);
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
#ifndef ITERATOR_H
#define ITERATOR_H

#include "node.h"
#include <vector>
#include <stack>

template <typename T> 
class Iterator {
    private:
        std::stack<Node<T>*, std::vector<Node<T>*>> nodosPrevios;
        std::stack<Node<T>*, std::vector<Node<T>*>> memoriaNodos;
        Node<T> *current;

    protected:
        Node<T>* siguiente(Node<T>* posicionInicial) {
            if (posicionInicial->left) {
                nodosPrevios.push(posicionInicial);
                return siguiente(posicionInicial->left);
            } else {
                return posicionInicial;
            }
        }

    public:
        Iterator(): current(nullptr) {
            nodosPrevios.push(nullptr);
        }

        Iterator(Node<T> *node): current(node) {
            nodosPrevios.push(nullptr);
            if (this->current && this->current->left) {
                ++*this;
            }
            memoriaNodos.push(this->current);
        }

        Iterator<T>& operator=(const Iterator<T> &other) {
            this->current = other;
            return *this;
        }

        bool operator!=(Iterator<T> other) {
            return this->current != other.current;
        }

        Iterator<T>& operator++() {
            if (this->current->left && nodosPrevios.top() != this->current) {
                nodosPrevios.push(this->current);
                this->current = siguiente(this->current->left);
            } else {
                if (this->current == nodosPrevios.top()) {
                    nodosPrevios.pop();
                }
                if (this->current->right) {
                    this->current = siguiente(this->current->right);
                } else {
                    this->current = nodosPrevios.top();
                }
            }
            memoriaNodos.push(this->current);
            return *this;
        }

        Iterator<T>& operator--() {
            memoriaNodos.pop();
            this->current = memoriaNodos.top();
            return *this;
        }

        T operator*() {
            return this->current->data;
        }
};

#endif

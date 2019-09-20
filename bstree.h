#ifndef BSTREE_H
#define BSTREE_H

#include "node.h"
#include "iterator.h"

template <typename T> 
class BSTree {
    Node<T> *root;
    size_t nodes = 0;

    protected:

    bool searchNode(T data, Node<T>* temporal) {
        if (temporal) {
            if (data == temporal->data) {
                return true;
            }
            if (data < temporal->data) {
                return searchNode(data, temporal->left);
            } else {
                return searchNode(data, temporal->right);
            }
        } else {
            return false;
        }
    }

    void newNode(T data, Node<T>* temporal) {
        if (data <= temporal->data) {
            if (temporal->left != nullptr) {
                newNode(data, temporal->left);
            } else {
                Node<T>* asignar = new Node(data);
                temporal->left = asignar;
            }
        }
        else if (data > temporal->data) {
            if (temporal->right != nullptr) {
                newNode(data, temporal->right);
            } else {
                Node<T>* asignar = new Node(data);
                temporal->right = asignar;
            }
        }
    }

    T minimoValor(Node<T>* actual) {
        if (!actual->left) {
            return actual->data;
        } else {
            return minimoValor(actual->left);
        }
    }

    Node<T>* deleteNode(T data, Node<T>* padre, Node<T>* actual) {
        if (data < actual->data) {
            if (actual->left) {
                return deleteNode(data, actual, actual->left);
            } else {
                return nullptr;
            }
        } else if (data > actual->data) {
            if (actual->right) {
                return deleteNode(data, actual, actual->right);
            } else {
                return nullptr;
            }
        } else {
            if (actual->left && actual->right) {
                actual->data = minimoValor(actual->right);
                return deleteNode(actual->data, actual, actual->right);
            } else if (padre->left == actual) {
                padre->left = (actual->left) ? actual->left : actual->right;
                return actual;
            } else if (padre->right == actual) {
                padre->right = (actual->left) ? actual->left : actual->right;
                return actual;
            }
        }
    }

    void preOrder(Node<T>* temporal) {
        if (!temporal) {
            return;
        }
        cout << temporal->data << ' ';
        preOrder(temporal->left);
        preOrder(temporal->right);
    }

    void inOrder(Node<T>* temporal) {
        if (!temporal) {
            return;
        }
        inOrder(temporal->left);
        cout << temporal->data << ' ';
        inOrder(temporal->right);
    }

    void postOrder(Node<T>* temporal) {
        if (temporal) {
            postOrder(temporal->left);
            postOrder(temporal->right);
            cout << temporal->data << ' ';
        }
        return;
    }

    size_t getHeight(Node<T>* actual) {
        if (!actual) {
            return 0;
        } else {
            size_t alturaIzquierda = getHeight(actual->left);
            size_t alturaDerecha   = getHeight(actual->right);
            if (alturaIzquierda > alturaDerecha) {
                return (alturaIzquierda + 1);
            } else {
                return (alturaDerecha + 1);
            }
        }
    }

    public:
        BSTree() : root(nullptr) {};

        bool find(T data) {
            return searchNode(data, this->root);
        }

        void insert(T data) {
            Node<T>* temporal = new Node(data);
            this->nodes++;
            if (this->root) {
                newNode(data, this->root);
            } else {
                this->root = temporal;
            }
        }

        bool remove(T data) {
            if (this->root) {
                if (this->root->data == data) {
                    Node<T>* temporal = new Node(0);
                    temporal->left = this->root;
                    Node<T>* nodoBorrar = deleteNode(data, temporal, this->root);
                    this->root = temporal->left;
                    if (nodoBorrar) {
                        delete nodoBorrar;
                        this->nodes--;
                        return true;
                    } else {
                        return false;
                    }
                } else {
                    Node<T>* nodoBorrar = deleteNode(data, nullptr, this->root);
                    if (nodoBorrar) {
                        delete nodoBorrar;
                        this->nodes--;
                        return true;
                    } else {
                        return false;
                    }
                }
            } else {
                throw invalid_argument("El arbol no cuenta con nodos");
            }
        }

        size_t size() {
            return this->nodes;
        }

        size_t height() {
            return getHeight(this->root);
        }

        void traversePreOrder() {
            if (this->root) {
                preOrder(this->root);
                cout << endl;
            } else {
                throw invalid_argument("El arbol no cuenta con nodos");
            }
        }

        void traverseInOrder() {
            if (this->root) {
                inOrder(this->root);
                cout << endl;
            } else {
                throw invalid_argument("El arbol no cuenta con nodos");
            }
        }

        void traversePostOrder() {
            if (this->root) {
                postOrder(this->root);
                cout << endl;
            } else {
                throw invalid_argument("El arbol no cuenta con nodos");
            }
        }

        Iterator<T> begin() {
            // TODO
        }

        Iterator<T> end() { 
            // TODO
        }

        ~BSTree() {
            this->root->killSelf();
        }
};

#endif

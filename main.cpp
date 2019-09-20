#include <iostream>
#include "tester/tester.h"

using namespace std;

int main(int argc, char *argv[]) {
    cout << "===========================================================" << endl;
    cout << "Binary Search Tree Practice" << endl;
    cout << "===========================================================" << endl << endl;

    //Tester::execute();

    BSTree<int> bsTree;
    bsTree.insert(8);
    bsTree.insert(3);
    bsTree.insert(10);
    bsTree.insert(1);
    bsTree.insert(6);
    bsTree.insert(4);
    bsTree.insert(7);
    bsTree.insert(14);
    bsTree.insert(13);
    bsTree.traversePostOrder();
    //bsTree.remove(13);
    bsTree.traverseInOrder();
    bsTree.traversePreOrder();
    cout << bsTree.size() << endl;
    cout << bsTree.height() << endl;

    return EXIT_SUCCESS;
}
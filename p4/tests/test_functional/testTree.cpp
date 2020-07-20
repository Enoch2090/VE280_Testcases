#include <iostream>
#include <cassert>
#include "../binaryTree.h"
using namespace std;

int main()
{
    Node *n1 = new Node("a", 4);
    Node *n2 = new Node("bb", 2);
    Node *n3 = new Node("ddd", 5);
    Node *n4 = new Node("e", 7);
    Node *n5 = new Node("c", 3);
    Node *n6 = new Node("g", 8);
    Node *n7 = new Node("5", 9);
    n2->setleft(n4);
    n2->setright(n5);
    n1->setleft(n2);
    n1->setright(n3);
    BinaryTree b(n1);
    b.inorder_str();
    cout << endl;
    n5->setleft(n6);
    n5->setright(n7);
    b.preorder_num();
    cout << endl;
    b.postorder_num();
    cout << endl;
    cout << b.depth() << endl;
    cout << b.findPath("5") << endl;
    cout << b.sum() << endl;
    Node *n8 = new Node("a", 4);
    Node *n9 = new Node("bb", 2);
    Node *n10 = new Node("e", 7);
    Node *n11 = new Node("c", 3);
    n9->setleft(n10);
    n9->setright(n11);
    n8->setleft(n9);
    BinaryTree b1(n8);
    cout << b.allPathSumGreater(0) << endl;
    cout << b.allPathSumGreater(12) << endl;
    cout << "Covered By: " << b1.covered_by(b) << endl;
    cout << "Contained By: " << b1.contained_by(b) << endl;
    Node *n12 = new Node("a", 4);
    Node *n13 = new Node("bb", 1);
    Node *n14 = new Node("e", 7);
    Node *n15 = new Node("c", 3);
    n13->setleft(n14);
    n13->setright(n15);
    n12->setleft(n13);
    BinaryTree b2(n12);
    cout << "Covered By: " << b2.covered_by(b1) << endl;
    cout << "Contained By: " << b2.contained_by(b1) << endl;
    cout << "Covered By: " << b2.covered_by(b) << endl;
    cout << "Contained By: " << b2.contained_by(b) << endl;
}

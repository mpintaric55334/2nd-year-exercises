#include <iostream>
#include <algorithm>
using namespace std;

template <typename T> struct Node{
    T item;
    shared_ptr<Node<T>> left=nullptr;
    shared_ptr<Node<T>> right=nullptr;
    Node(const T &newItem):item(newItem),left(nullptr),right(nullptr){}
    ~Node(){cout<<"Najebalo stablo a";}

};

template <typename T> class BinaryTree{
    public:
        BinaryTree(): root(nullptr){}
        ~BinaryTree(){}
        

};
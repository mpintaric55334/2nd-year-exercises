// using -std=c++11
#include <algorithm>
#include <cmath>
#include <iostream>
#include <memory>
#include <string>
using namespace std;

template <typename T> struct Node {
   T item;
   shared_ptr<Node<T>> left;
   shared_ptr<Node<T>> right;
   // Node();
   Node(const T &newItem) : item(newItem), left(nullptr), right(nullptr) {}
   ~Node() { std::cout << "Destructor (" << item << ")\n"; }
};

// Base class: binary tree
template <typename T> class BinaryTree {
 public:
   BinaryTree() : root(nullptr) {}
   ~BinaryTree() {}

   // non-virtual functions
   bool isEmpty() const { return (root == nullptr); }

   // non-virtual functions (these functions are independent of the tree nodes
   // order)
   bool isBalanced() { return isBalanced(root); }
   int height() { return height(root); }
   void printTree() { printTree(root); }

   void inorder() { inorder(root); }
   void preorder() { preorder(root); }
   void postorder() { postorder(root); }
   int countNodes(){return countNodes(root);}
   int inorder2(){return inorder2(root);}
   int countLevel(int level){return countLevel(root,level);}
   T nthValue(int n){
      int curr=0;
      T item;
      nthValue(root,n,curr,item);
      return item;
   }
   void changeValues(){T item=changeValues(root);}
   int countNodes2(){return countNodes2(root);}
   int inorder3(){return inorder3(root);}
   int countLevel2(int level){return countLevel2(root,level);}
   T sumLevel(int level){
      T sum=0;
      sumLevel(root,level,sum);
      return sum;
   }

   // virtual functions
   virtual void insert(const T &item) = 0;
   virtual bool remove(const T &item) = 0;
   virtual bool search(const T &item) = 0;

 protected:
   shared_ptr<Node<T>> root;

 private:
   bool isBalanced(shared_ptr<Node<T>> &);
   int height(shared_ptr<Node<T>> &);
   void printTree(shared_ptr<Node<T>> &, int level = 0);

   void inorder(shared_ptr<Node<T>> &);
   void preorder(shared_ptr<Node<T>> &);
   void postorder(shared_ptr<Node<T>> &);
   int countNodes(shared_ptr<Node<T>> &);
   int inorder2(shared_ptr<Node<T>> &);
   int countLevel(shared_ptr<Node<T>> &,int &);
   
   int countNodes2(shared_ptr<Node<T>> &);
   int inorder3(shared_ptr<Node<T>> &);
   int countLevel2(shared_ptr<Node<T>> &,int );
   void nthValue(shared_ptr<Node<T>> &,int ,int &,T &);
   T changeValues(shared_ptr<Node<T>> &);
   void sumLevel(shared_ptr<Node<T>> &,int,T &);
   
};

template <typename T>
bool BinaryTree<T>::isBalanced(shared_ptr<Node<T>> &node) {
   if (node) {
      int heightLeft = height(node->left);
      int heightRight = height(node->right);
      return (std::abs(heightLeft - heightRight) <= 1 &&
              isBalanced(node->left) && isBalanced(node->right));
   }
   return true;
}
template <typename T> void BinaryTree<T>::sumLevel(shared_ptr<Node<T>> &node,int level,T &sum){
   if(node){
      if(level==1){
         sum+=node->item;
      }else{
         sumLevel(node->left,level-1,sum);
         sumLevel(node->right,level-1,sum);
      }
   }
}

template <typename T> int BinaryTree<T>::height(shared_ptr<Node<T>> &node) {
   if (node) {
      int heightLeft = height(node->left);
      int heightRight = height(node->right);
      return (1 + std::max(heightLeft, heightRight));
   }
   return 0;
}

template <typename T>
void BinaryTree<T>::printTree(shared_ptr<Node<T>> &node, int level) {
   if (node) {
      printTree(node->right, level + 1);
      std::string spaces(level * 2, ' ');
      std::cout << spaces << node->item << "\n";
      printTree(node->left, level + 1);
   }
}

template <typename T> void BinaryTree<T>::inorder(shared_ptr<Node<T>> &node) {
   if (node) {
      if (node->left) {
         inorder(node->left);
      }
      std::cout << node->item << " ";
      if (node->right) {
         return inorder(node->right);
      }
   }
}

template <typename T> void BinaryTree<T>::preorder(shared_ptr<Node<T>> &node) {
   if (node) {
      std::cout << node->item << " ";
      if (node->left) {
         preorder(node->left);
      }
      if (node->right) {
         preorder(node->right);
      }
   }
}

template <typename T> void BinaryTree<T>::postorder(shared_ptr<Node<T>> &node) {
   if (node) {
      if (node->left) {
         postorder(node->left);
      }
      if (node->right) {
         postorder(node->right);
      }
      std::cout << node->item << " ";
   }
}
template <typename T> int BinaryTree<T>::countNodes(shared_ptr<Node<T>> &node){
   if(node){
      
      return(1+countNodes(node->left)+ countNodes(node->right));
   }else{
      return 0;
   }
}

template <typename T> int BinaryTree<T>::inorder2(shared_ptr<Node<T>> &node){
   if(node){
         int cnt = inorder2(node->left);
         ++cnt;
         // operator << treba biti preopterećen za tip T
         std::cout << node->item << " ";
         cnt += inorder2(node->right);
         return cnt;

   }
   return 0;
}

template <typename T> int BinaryTree<T>::countNodes2(shared_ptr<Node<T>> &node){
   if(node){
      return 1+countNodes2(node->right)+countNodes2(node->left);
   }else{
      return 0;
   }
}

template <typename T> int BinaryTree<T>::inorder3(shared_ptr<Node<T>> &node){
   if(node){
      int cnt;
      cnt=inorder3(node->left);
      cnt++;
      cout<<node->item<<" "<<endl;
      cnt+=inorder3(node->right);
      return cnt;
   }else{
      return 0;
   }
   
}
template<typename T> int BinaryTree<T>::countLevel2(shared_ptr<Node<T>> &node,int level){
   if(node){
      if(level==1){
         return 1;
      }else{
         return countLevel2(node->left,level-1)+countLevel2(node->right,level-1);
      }
   }else{
      return 0;
   }

}

template<typename T> void BinaryTree<T>::nthValue(shared_ptr<Node<T>> &node,int n,int &curr,T &item){
   if(node){
      if(node->right){
         nthValue(node->right,n,curr,item);
      }
      curr++;
      if(n==curr){
         item=node->item;
      }
      if(node->left){
         nthValue(node->left,n,curr,item);
      }
   }
}
template<typename T> T BinaryTree<T>::changeValues(shared_ptr<Node<T>> &node){
   if(node){
      T item=node->item;
      T sum=changeValues(node->left)+changeValues(node->right);
      node->item=sum;
      return item+sum;
   }else{
      return 0;
   }
   

}
// Derived class: binary search tree
template <typename T> class BSTree : public BinaryTree<T> {
 public:
   BSTree() : BinaryTree<T>::BinaryTree() {}
   ~BSTree() {} // Calling base class destructor?

   // virtual functions
   void insert(const T &item) { insert(this->root, item); }
   bool remove(const T &item) { return remove(this->root, item); }
   bool search(const T &item) { return search(this->root, item); }

 private:
   void insert(shared_ptr<Node<T>> &, const T &);
   bool remove(shared_ptr<Node<T>> &, const T &);
   bool search(shared_ptr<Node<T>> &, const T &);
};

template <typename T>
void BSTree<T>::insert(shared_ptr<Node<T>> &node, const T &newItem) { // Ref?
   if (node) {
      if (node->item < newItem) {
         insert(node->right, newItem);
      } else if (node->item > newItem) {
         insert(node->left, newItem);
      } else {
         throw std::invalid_argument("Error: Item " + std::to_string(newItem) +
                                     " already exists in the tree.");
      }
   } else {
      node = std::make_shared<Node<T>>(newItem);
   }
}

template <typename T>
bool BSTree<T>::search(shared_ptr<Node<T>> &node, const T &item) {
   if (node) {
      if (node->item < item) {
         return search(node->right, item);
      } else if (node->item > item) {
         return search(node->left, item);
      } else { // found item
         return true;
      }
   }
   return false;
}

template <typename T>
bool BSTree<T>::remove(shared_ptr<Node<T>> &node, const T &item) {
   if (node) {
      if (node->item < item) {
         return remove(node->right, item);
      } else if (node->item > item) {
         return remove(node->left, item);
      } else {              // found item
         if (!node->left) { // no left subtree
            node = node->right;
         } else if (!node->right) { // no right subtree
            node = node->left;
         } else {
            shared_ptr<Node<T>> tmp = node->left, prev = nullptr;
            while (tmp->right) { // find the rightmost child in the left subtree
               prev = tmp;
               tmp = tmp->right;
            }
            node->item = tmp->item;
            if (prev)
               prev->right = tmp->left;
            else
               node->left = tmp->left;
         }
         return true;
      }
   }
   return false;
}

int main(void) {
   // int A[] = { 4, -3, 5, -2, -4, 2, 6, -2, 9, 8 };
   int A[] = {1,-2,4,3,5};
   constexpr auto n = sizeof(A) / sizeof(int);

   try {
      BSTree<int> bsTree = BSTree<int>();
      for (int i = 0; i < n; i++) {
         bsTree.insert(A[i]);
      }
      cout<<bsTree.sumLevel(1);
      std::cout << std::endl;
      cout<<bsTree.sumLevel(2);
      
      

      
   } catch (std::exception &e) {
      std::cerr << e.what();
   }
   std::cin.get();
   return 0;
}

#include <algorithm>
#include <iostream>
#include <string>
#define integer

using namespace std;

template <class T> struct ListElement {
   T data;
   ListElement<T> *next;
};

template <class T> class ListIterator {
 private:
   ListElement<T> *ptr = nullptr;

 public:
   ListIterator<T>() : ptr(nullptr) {}
   ListIterator<T>(ListElement<T> *ptr) : ptr(ptr) {}
   ListIterator<T>* operator++() { // prefix ++
      if (ptr)
         ptr = ptr->next;
      return this;
   }
   ListIterator<T> operator++(int i) { // postfix ++
      ListIterator<T> tmp = *this;
      ++(*this);
      return tmp;
   }
   bool operator!=(const ListIterator<T> &other) { return ptr != other.ptr; }
   T &operator*() { return ptr->data; }
};

template <class T> class List {
 private:
   ListElement<T> *head = nullptr;

 public:
    
   bool Insert(T data) { // umetanje na početak liste
      ListElement<T> *newElement = new (nothrow) ListElement<T>;
      if (newElement == nullptr)
         return false;
      newElement->data = data;
      newElement->next = head;
      head = newElement;
      return true;
   }
   bool Append(T data) { // dodavanje na kraj liste
      ListElement<T> *newElement = new ListElement<T>;
      if (newElement == nullptr)
         return false;
      newElement->data = data;
      newElement->next = nullptr;
      ListElement<T> **p;
      for (p = &head; *p; p = &((*p)->next))
         ;
      *p = newElement;
      return true;
   }
   bool InsertSorted(T data) { // umetanje po sortiranom redoslijedu, T mora
                               // imati implementiran operator >
      ListElement<T> *newElement = new (nothrow) ListElement<T>;
      if (newElement == nullptr)
         return false;
      newElement->data = data;
      ListElement<T> **p;
      for (p = &head; *p && data > (*p)->data; p = &((*p)->next))
         ;
      newElement->next = *p;
      *p = newElement;
      return true;
   }
   
    ListElement<T>* at2(int k){
        int i=0;
        ListElement<T> *p=head;
        for(;i<k && p;i++,p=p->next);
        if(k>=0 && p){
            return p;
        }else{
            return nullptr;
        }

    }
    int length(){
        List<T>::iterator it;
        int i=0;
        for(it=this->begin();it != this->end();it++){i++;};
        return i;

    }
    int countItem(T item){
        List<T>::iterator it;
        int cnt=0;
        for(it=this->begin();it != this->end();++it){
            if(*it==item){
                cnt++;
            }
        }
        return cnt;
    }
    void deleteAll(){
        ListElement<T> *p,*tmp;
        p=head;
        while(p){
            tmp=p;
            p=p->next;
            delete tmp;
        }
    }
    void reverseList(){
        ListElement<T> *p,*pnext,*pprev;
        p=head;
        pnext=nullptr;
        pprev=nullptr;
        while(p){
            pnext=p->next;
            p->next=pprev;
            pprev=p;
            p=pnext;
        }
        head=pprev;
    }

   
   

   typedef ListIterator<T> iterator;
   iterator begin() { return iterator(head); }
   iterator end() { return iterator(); }
};



int main(void){
    
    List<int> l;
l.Append(4);
l.Append(2);
l.Insert(1);
l.Insert(2);
l.Insert(2);
cout<<l.length();

}
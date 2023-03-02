#include <iostream>

using namespace std;

template <class T> class List{
    template <class X> struct ListElement{
        X data;
        ListElement<T> *next;
    };
    ListElement<T> *head=nullptr;
    ListElement<T> *tail=nullptr;
    public:
        bool insert(T data){
            ListElement<T> *newElement=new ListElement<T>;
            if(newElement==nullptr){
                return false;
            }
            newElement->data=data;
            newElement->next=head;
            head=newElement;
            if(!tail){
                tail=head;
            }
            return true;
        }
        bool append(T data){
            ListElement<T> *newElement=new ListElement<T>;
            if(newElement==nullptr){
                return false;
            }
            newElement->data=data;
            newElement->next=nullptr;
            if(!tail){
                head=newElement;
            }else{
                tail->next=newElement;
            }
            tail=newElement;
            return true;
        }
        bool insertSorted(T data){
            ListElement<T> *newElement=new ListElement<T>;
            ListElement<T> **p;
            if (newElement == nullptr)
                return false;
            newElement->data = data;
            for(p=&head; *p && data>(*p)->data; p=&((*p)->next));
            newElement->next = *p;
            *p=newElement;
            if(!tail){
                tail=head;
            }

            if(newElement->next==nullptr){
                tail=newElement;
            }
            return true;
        }

        bool remove(T data){
            ListElement<T> **p;
            ListElement<T> *r;
            for(p=&head,r=head;*p && data != (*p)->data;r=*p,p=&((*p)->next));
            if(*p){
                ListElement<T> *tmp;
                tmp=*p;
                *p=(*p)->next;
                if(head==nullptr){
                    tail=nullptr;
                }else if (*p == nullptr) // razlika u odnosu na List.cpp
                    tail = r;            // razlika u odnosu na List.cpp
                delete tmp;
                return true;

            }else{
                return false;
            }
        }
        void print() {
            for (ListElement<T> *p = head; p; p = p->next) {
                cout << p->data << " ";
            }
            cout << endl;
        }
};
int main(void) {
    List<int> l;
   l.insertSorted(4);
   l.insertSorted(5);
   l.insertSorted(6);
   l.insertSorted(1);
   l.insertSorted(2);
   l.insertSorted(3);
   l.print();
   // l.printRecursive();
   l.remove(4);
   l.print();
   return 0;
}
#include <iostream>
using namespace std;

template <class T> class List{
    template <class X> struct ListElement{
        X data;
        ListElement<X> *next;
    };
    ListElement<T> *head=nullptr;
    public:
        bool insert(T data){//umetanje na pocetak liste
            ListElement<T> *newElement=new ListElement<T>;
            if(newElement==nullptr){
                return false;
            }
            newElement->data=data;
            newElement->next=head;
            head=newElement;
            return true;
        }
        bool append(T data){//na kraj liste
            ListElement<T> *newElement=new ListElement<T>;
            if(newElement==nullptr){
                return false;
            }
            newElement->data=data;
            newElement->next=nullptr;
            ListElement<T> **p;
            for(p=&head;*p;p=&((*p)->next));
            *p=newElement;
            return true;
        }
        bool insertSorted(T data){//insertanje sortirano
            ListElement<T> *newElement=new ListElement<T>;
            if(newElement==nullptr){
                return false;
            }
            newElement->data=data;
            ListElement<T> **p;
            for(p=&head;*p && data>((*p)->data);p=&((*p)->next));
            newElement->next=*p;
            *p=newElement;
            return true;

        }
        bool remove(T data){
            ListElement<T> **p;
            for(p=&head;*p && data != ((*p)->data);p=&((*p)->next));
            if(*p){
                ListElement<T> *tmp;
                tmp=*p;
                *p=(*p)->next;
                delete tmp;
                return true;
            }else{
                return false;
            }
        }
        void print(){
            for(ListElement<T> *p=head;p;p=p->next){
                cout<<p->data<<" ";

            }
            cout<<endl;
        }
};

int main(void){
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
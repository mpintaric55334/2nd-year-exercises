#include <iostream>
using namespace std;

template <class T> class Queue{
    template <class X> struct QueueItem{
        X item;
        QueueItem<X> *next;
    };

    QueueItem<T> write=nullptr;
    QueueItem<T> read=nullptr;

    public:
        bool enqueue(T item){
            QueueItem<T> *newItem=new QueueItem<T>;
            if(!newItem){
                return false;
            }
            newItem->next=nullptr;
            newItem->item=item;
            if(write==nullptr){
                read=newItem;
            }else{
                write->next=newItem;
            }
            write=newItem;
            return true;
        }

        bool dequeue(T &item){
            if(read==nullptr){
                return false;
            }
            item=read->data;
            QueueItem<T> *tmp=read;
            read=read->next;
            if(read==nullptr){
                write=nullptr;
            }
            delete tmp;
            return true;


        }

};
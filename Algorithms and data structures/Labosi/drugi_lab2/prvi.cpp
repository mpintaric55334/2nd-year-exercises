#include <iostream>
#include <bits/stdc++.h>
using namespace std;

template <class T> class List{
    template <class X> struct cvor{
        X element;
        cvor<X> *next;
    };
    cvor<T> *head=nullptr;
    public:
        bool upis(T element){
            cvor<T> *noviCvor=new cvor<T>;
            if(noviCvor==nullptr){
                return false;
            }
            noviCvor->element=element;
            cvor<T> **p;
            for(p=&head;*p && (*p)->element<element;p=&((*p)->next));
            noviCvor->next=*p;
            *p=noviCvor;
            return true;
        }
        void ispis(){
            cvor<T> **p;
            for(p=&head;*p;p=&((*p)->next)){
                cout<<(*p)->element<<" ";
            }

        }

};

int main(void){
    List<int> lista;
    for(int i=0;i<10;i++){
        int k;
        cin>>k;
        lista.upis(k);
    }
    lista.ispis();
}
#include <iostream>
#include <bits/stdc++.h>
using namespace std;

template <class T> class List{
    template <class X> struct cvor{
        X element;
        cvor<X> *next;
        cvor<X> *prev;
    };
    cvor<T> *head=nullptr;
    cvor<T> *tail=nullptr;
    public:
        bool upis(T element){
            cvor<T> *noviCvor=new cvor<T>;
            if(noviCvor==nullptr){
                return false;
            }
            noviCvor->element=element;
            noviCvor->next=nullptr;
            noviCvor->prev=tail;
            if(tail==nullptr){
                head=noviCvor;
            }else{
                tail->next=noviCvor;
            }
            
            tail=noviCvor;
            return true;
            
        }
        void ispis(){
            cvor<T> **p;
            for(p=&head;*p;p=&(*p)->next){
                cout<<(*p)->element<<" ";
            }
        }
};

int main(void){
    List<string> lista;
    for(int i=0;i<10;i++){
        string s;
        cin>>s;
        lista.upis(s);
    }
    lista.ispis();
    
}
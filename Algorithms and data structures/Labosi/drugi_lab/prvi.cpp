#include <iostream>
#include <bits/stdc++.h>
using namespace std;

template <class T> class List{
    template <class X> struct cvor{
        X data;
        cvor<X> *next;
    };
    cvor<T> *head=nullptr;
    public:
        bool upis(T element){
            cvor<T> *novi_cvor=new cvor<T>;
            if(novi_cvor==nullptr){
                return false;
            }
            cvor<T> **p;
            novi_cvor->data=element;
            for(p=&head;*p && element>((*p)->data);p=&((*p)->next));
            novi_cvor->next=*p;
            *p=novi_cvor;
            return true;
        }
        void ispis(){
            cvor<T> **p;
            for(p=&head;*p;p=&((*p)->next)){
                cout<<(*p)->data<<" ";
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
#include <iostream>
#include <bits/stdc++.h>
using namespace std;

class Stog{
    struct cvor{
        int element;
        cvor *next;
    };
    cvor *top=nullptr;
    public:
        bool dodaj(int element){
            cvor *noviElement=new cvor;
            if(noviElement==nullptr){
                return false;
            }
            noviElement->element=element;
            noviElement->next=top;
            top=noviElement;
            return true;
        }
        bool pop(int &elem){
                if(top==nullptr){
                    return false;
                }
                cvor *tmp;
                tmp=top;
                elem=top->element;
                top=top->next;
                delete tmp;
                return true;
        }
};
int main(void){
    Stog s;
    srand(time(NULL));
    for(int i=0;i<101;i++){
        s.dodaj(rand()%100+1);
    }
    int item;
    
}
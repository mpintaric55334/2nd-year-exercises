#include <iostream>
#include <bits/stdc++.h>
#include <time.h>
using namespace std;

class Stog{
    struct StogElement{
        int data;
        StogElement *next;
    };
    StogElement *top=nullptr;
    public:
        bool push(int elem){
            StogElement *novi=new StogElement;
            if(novi==nullptr){
                return false;
            }
            novi->data=elem;
            novi->next=top;
            top=novi;
            return true;
            
        }
        bool pop(int &elem){
            if(top==nullptr){
                return false;
            }
            StogElement *tmp;
            tmp=top;
            elem=top->data;
            top=top->next;
            delete tmp;
            return true;
        }
};
int main(void){
    Stog s;
    srand(time(NULL));
    for(int i=0;i<101;i++){
        s.push(rand()%100+1);
    }
    int item;
    
}

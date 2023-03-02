#include <iostream>
#include <bits/stdc++.h>
using namespace std;

class Red{
    struct Cvor{
        double element;
        Cvor *next=nullptr;
    };
    Cvor *ulaz=nullptr;
    Cvor *izlaz=nullptr;
    public:
        bool dodaj(double broj){
            Cvor *novi=new Cvor;
            if(novi==nullptr){
                return false;
            }
            novi->element=broj;
            novi->next=nullptr;
            if(ulaz==nullptr){
                izlaz=novi;
            }else{
                ulaz->next=novi;
            }
            ulaz=novi;
            return true;
            
        }
        bool skini(double *broj){
            if(izlaz==nullptr){
                return false;
            }
            Cvor *tmp;
            tmp=izlaz;
            *broj=izlaz->element;
            izlaz=izlaz->next;
            if(izlaz==nullptr){
                ulaz=nullptr;
            }
            delete tmp;
            return true;

        }
};

int main(void){
    Red r;
    int n;
    cin>>n;
    for(int i=0;i<n;i++){
        int k;
        cin>>k;
        r.dodaj(k);

    }
    double broj;
    while(r.skini(&broj)){
        cout<<broj<<" ";
    }
}
#include <iostream>
#include <bits/stdc++.h>
using namespace std;

class Red{
    struct Cvor{
        double data;
        Cvor *next;
    };
    Cvor *izlaz=nullptr;
    Cvor *ulaz=nullptr;
    public:
        bool dodaj(double broj){
            Cvor *novi=new Cvor;
            if(novi==nullptr){
                return false;
            }
            novi->data=broj;
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
            }else{
                *broj=izlaz->data;
                Cvor *tmp=izlaz;
                izlaz=izlaz->next;
                if(izlaz==nullptr){
                    ulaz=nullptr;
                }
                delete tmp;
                return true;

            }
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
#include <iostream>
#include <bits/stdc++.h>
using namespace std;

class Red{
    struct Cvor{
        int broj;
        Cvor *next;
    };
    Cvor *ulaz=nullptr;
    Cvor *izlaz=nullptr;
    public:
        bool dodaj(int broj){
            Cvor *novi=new Cvor;
            if(novi==nullptr){
                return false;
            }
            novi->broj=broj;
            novi->next=nullptr;
            if(ulaz==nullptr){
                izlaz=novi;
            }else{
                ulaz->next=novi;
            }
            ulaz=novi;
            return true;
        }
        bool skini(int &broj){
            if(izlaz==nullptr){
                return false;
            }
            broj=izlaz->broj;
            Cvor *tmp=izlaz;
            izlaz=izlaz->next;
            delete tmp;
            if(izlaz==nullptr){
                ulaz=nullptr;
            }
            return true;

        }

        bool poljeURed(int polje[],int n){
            bool uspilo=dodaj(polje[n-1]);
            cout<<polje[n-1]<<" ";
            if(uspilo==false){
                return false;
            }else{
                if(n-1==0){
                    return true;
                }else{
                    poljeURed(polje,n-1);
                }
            }
        }

};
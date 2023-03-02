#include <iostream>
#include <bits/stdc++.h>
#include <time.h>
using namespace std;

class Red{
    struct Cvor{
        double data;
        Cvor *next;
    };
    Cvor *ulaz=nullptr;
    Cvor *izlaz=nullptr;
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
        bool skini(double &broj){
            if(izlaz==nullptr){
                return false;
            }
            broj=izlaz->data;
            Cvor *tmp=izlaz;
            izlaz=izlaz->next;
            if(izlaz==nullptr){
                ulaz=nullptr;
            }
            delete tmp;
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

int main(void){
    Red r;
    int polje[10];
    srand(time(NULL));
    for(int i=0;i<10;i++){
        int broj=rand()%10+1;
        cout<<broj<<" ";
        polje[i]=broj;
    }
    cout<<endl;
    r.poljeURed(polje,10);


}
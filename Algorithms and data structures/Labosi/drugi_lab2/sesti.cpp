#include <iostream>
#include <bits/stdc++.h>
using namespace std;

class Red{
    double polje[10];
    int ulaz=0;
    int izlaz=0;
    public:
        bool dodaj(double broj){
            if((ulaz+1)%10==izlaz){
                return false;
            }else{
                polje[ulaz]=broj;
                ulaz=(ulaz+1)%10;
                return true;

            }
        }
        bool skini(double &broj){
            if(ulaz==izlaz){
                return false;
            }else{
                broj=polje[izlaz];
                izlaz=(izlaz+1)%10;
                return true;
            }
        }
};

int main(void){
    Red r;
    double k;
    for(int i=0;i<10;i++){
        cin>>k;
        r.dodaj(k);
    }
    double broj;
    for(int i=0;i<10;i++){
        r.skini(broj);
        cout<<broj<<" ";
    }
}
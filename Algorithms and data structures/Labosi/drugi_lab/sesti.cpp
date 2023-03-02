#include <iostream>
#include <bits/stdc++.h>

using namespace std;

class Red{
    private:
        double lista[10];
        int max=10;
        int ulaz=0;
        int izlaz=0;
    public:
        bool dodaj(double broj){
            if((ulaz+1)%max==izlaz){
                return false;
            }else{
                lista[ulaz]=broj;
                ulaz=(ulaz+1)%max;
            }
            return true;
        }
        bool skini(double &broj){
            if(ulaz==izlaz){
                return false;
            }else{
                broj=lista[izlaz];
                izlaz=(izlaz+1)%max;
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
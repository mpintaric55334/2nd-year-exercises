#include <iostream>
#include <bits/stdc++.h>
using namespace std;
typedef unsigned short int usi;

template <class T> void InsertionSort(T A[],int n){
    int i,j;
    T tmp;
    for(i=1;i<n;i++){
        tmp=A[i];
        for(j=i;j>=1 && tmp<A[j-1];j--){
            A[j]=A[j-1];

        }
        A[j]=tmp;
    }
}

class Osoba{
    private:
        string ime;
        usi godine;
    public:
        Osoba(){};
        Osoba(string ime,usi godine):ime(ime),godine(godine){};
        usi getGodine(){
            return godine;
        }
        string getIme(){
            return ime;
        }
        void setGodine(usi godine2){
            godine=godine2;
        }
        void setIme(string ime2){
            ime=ime2;
        }

        Osoba &operator=(Osoba &osoba){
            ime=osoba.getIme();
            godine=osoba.getGodine();
            return *this;
        }
        int operator<(Osoba osoba){
            if(godine!=osoba.getGodine()){
                return godine<osoba.getGodine();
            }else{
                return ime<osoba.getIme();
            }
        }
};

int main(void){
    string ime;
    unsigned short int godine;
    int i;
    int n;
    cin>>n;
    Osoba *polje=new Osoba[n];
    for(i=0;i<n;i++){
        cin>>ime;
        cin>>godine;
        Osoba os(ime,godine);
        polje[i]=os;
    }
    InsertionSort<Osoba>(polje,n);
    for(i=0;i<n;i++){
        cout<<polje[i].getIme()<<" "<<polje[i].getGodine()<<endl;
    }

}
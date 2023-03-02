#include <iostream>
#include <bits/stdc++.h>
using namespace std;

class Osoba{
    private:
        string ime;
        unsigned short int godine;
    public:
        Osoba(){};
        Osoba(string ime,unsigned short int godine):ime(ime),godine(godine){};
        string getIme(){
            return ime;
        }
        unsigned short int getGodine(){
            return godine;
        }
        void setIme(string ime2){
            ime=ime2;
        }
        void setGodine(unsigned short int godine2){
            godine=godine2;
        }

        Osoba &operator=(const Osoba& osoba){
            ime=osoba.ime;
            godine=osoba.godine;
            return *this;
        }
        int operator<(Osoba osoba){
            if(godine!=osoba.godine){
                return godine<osoba.godine;
            }else{
                return ime<osoba.ime;
            }
        }

};

template <class T> void swap(T &A,T &B){
    T tmp;
    tmp=A;
    A=B;
    B=tmp;
}

template <class T> void InsertionSort(T A[],int n){
    int i,j;
    for(i=0;i<n;i++){
        T tmp;
        tmp=A[i];
        for(j=i;j>=1 && tmp<A[j-1];j--){
            A[j]=A[j-1];
        }
        A[j]=tmp;
    }
}

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
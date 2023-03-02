#include <iostream>
#include <bits/stdc++.h>
using namespace std;

struct Zapis{
    int sifra;
    string naziv;

};
void swap(Zapis &A,Zapis &B){
    Zapis tmp;
    tmp=A;
    A=B;
    B=tmp;
}

void obicanBubbleSort(Zapis A[],int n,char smjer){
    int i,j;
    for(i=0;i<n-1;i++){
        for(j=0;j<n-1-i;j++){
            if(smjer=='0'){
                if(A[j].sifra>A[j+1].sifra){
                    swap(A[j],A[j+1]);
                }
            }else{
                if(A[j].sifra<A[j+1].sifra){
                    swap(A[j],A[j+1]);
                }
            }
        }
    }
}

int main(void){
    int n;
    cin>>n;
    Zapis *polje=new Zapis[n];
    Zapis z;
    for(int i=0;i<n;i++){
        cin>>z.sifra;
        cin>>z.naziv;
        polje[i]=z;
    }
    char smjer;
    cin>>smjer;
    obicanBubbleSort(polje,n,smjer);
    for(int i=0;i<n;i++){
        cout<<polje[i].sifra<<" "<<polje[i].naziv<<endl;
    }
}
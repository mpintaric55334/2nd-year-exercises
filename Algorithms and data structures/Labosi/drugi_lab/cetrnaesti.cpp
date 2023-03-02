#include <iostream>
#include <bits/stdc++.h>
using namespace std;

void Zamijeni(string *prvi,string *drugi){
    string tmp=*prvi;
    *prvi=*drugi;
    *drugi=tmp;
}

void BubbleSortPoboljsani(string A[],int n,int smjer){
    int i,j;
    bool swapHappened=true;
    for(i=0;swapHappened;i++){
        swapHappened=false;
        for(j=0;j<n-1-i;j++){
            if(smjer==0){
                if(A[j]<A[j+1]){
                    swapHappened=true;
                    Zamijeni(&A[j],&A[j+1]);
                }
            }
            if(smjer==1){
                if(A[j]>A[j+1]){
                    swapHappened=true;
                    Zamijeni(&A[j],&A[j+1]);
                }
            }
        }
    }

}

int main(void){
    string *polje=new string[10];
    int n;
    cin>>n;
    for(int i=0;i<n;i++){
        string s;
        cin>>s;
        polje[i]=s;
    }
    int smjer;
    cin>>smjer;
    BubbleSortPoboljsani(polje,n,smjer);
    for(int i=0;i<n;i++){
        cout<<polje[i]<<" ";
    }
}
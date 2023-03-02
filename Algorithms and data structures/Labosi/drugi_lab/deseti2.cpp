#include <iostream>
#include <bits/stdc++.h>
using namespace std;

void swap(int &A,int &B){
    int tmp=A;
    A=B;
    B=tmp;
}

void selection2Sort(int A[],int n,char smjer){
    int i,j;
    int max,min,max_i,min_i;
    for(i=0,j=n-1;i<j;i++,j--){
        max=A[i];
        min=A[i];
        max_i=i;
        min_i=i;
        int k;
        for(k=i;k<=j;k++){
            if(A[k]>max){
                max=A[k];
                max_i=k;
            }else if(A[k]<min){
                min=A[k];
                min_i=k;
            }
        }
        if(smjer=='0'){
            swap(A[i],A[min_i]);
            
            if(A[min_i]==max){
                swap(A[j],A[min_i]);
            }else{
                swap(A[j],A[max_i]);
            }
        }
        if(smjer=='1'){
            swap(A[j],A[min_i]);
            
            if(A[min_i]==max){
                swap(A[i],A[min_i]);
            }else{
                swap(A[i],A[max_i]);
            }
        }
    }
}

int main(void){
    int n;
    cin>>n;
    int *polje=new int[n];
    for(int i=0;i<n;i++){
        cin>>polje[i];
    }
    char smjer;
    cin>>smjer;
    selection2Sort(polje,n,smjer);
    for(int i=0;i<n;i++){
        cout<<polje[i]<<" ";
    }
    delete polje;
}
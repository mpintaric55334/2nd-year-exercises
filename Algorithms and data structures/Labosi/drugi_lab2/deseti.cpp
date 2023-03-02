#include <iostream>
#include <bits/stdc++.h>
using namespace std;

void Swap(int &A,int &B){
    int tmp=A;
    A=B;
    B=tmp;
}

void selection2Sort(int A[],int n,char smjer){
    int i,j,min_i,max_i,max,min;
    for(i=0,j=n-1;i<j;i++,j--){
        int k;
        min=A[i];
        max=A[i];
        min_i=i;
        max_i=i;
        for(int k=i;k<=j;k++){
            if(A[k]<min){
                min=A[k];
                min_i=k;
            }
            if(A[k]>max){
                max=A[k];
                max_i=k;
            }
        }
        if(smjer=='0'){
            swap(A[i],A[min_i]);

            if(max==A[min_i]){
                swap(A[j],A[min_i]);
            }else{
                swap(A[j],A[max_i]);
            }
        }
        if(smjer=='1'){
            swap(A[j],A[min_i]);

            if(max==A[min_i]){
                swap(A[i],A[min_i]);
            }else{
                swap(A[i],A[max_i]);
            }
        }
    }
}

int main(void) {
    int n;
    char smjer;
    cin >> n;
    int arr[n];
    for(int i=0; i<n; i++) cin >> arr[i];
    cin >> smjer;
    selection2Sort(arr, n, smjer);
    for(int i=0; i<n; i++) cout << arr[i] << " ";
    cout << endl;
}       
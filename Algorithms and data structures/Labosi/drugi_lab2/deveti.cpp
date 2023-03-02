#include <iostream>
#include <bits/stdc++.h>
using namespace std;

struct Zapis{
    int broj;
    string naziv;

};

void insertionSort(Zapis A[],int n,char smjer){
    int i,j;
    Zapis tmp;
    for(i=1;i<n;i++){
        tmp=A[i];
        if(smjer=='0'){
            for(j=i;j>=1 && A[j-1].broj>tmp.broj;j--){
            A[j]=A[j-1];
            }
            A[j]=tmp;
        }
        if(smjer=='1'){
            for(j=i;j>=1&& A[j-1].broj<tmp.broj;j--){
            A[j]=A[j-1];
            }
            A[j]=tmp;
        }
        
    }
}

int main(void) {
    int n;
    cin >> n;
    Zapis arr[n];
    for(int i=0; i<n; i++)
        cin >> arr[i].broj >> arr[i].naziv;
    char s;
    cin >> s;
    insertionSort(arr,n,s);
    for (int i=0; i<n; i++)
        cout << arr[i].broj << " " << arr[i].naziv << endl;
    return 0;
}
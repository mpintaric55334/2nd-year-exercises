#include <iostream>
using namespace std;

template <typename T> void Swap(T *A,T *B){
    T tmp=*A;
    *A=*B;
    *B=tmp;
}
template <typename T> void BubbleSort(T A[],size_t n){
    int i,j;
    for(i=0;i<n-1;i++){
        for(j=0;j<n-1-i;j++){
            if(A[j+1]<A[j]){
                Swap(&A[j+1],&A[j]);           }
        }
    }
}
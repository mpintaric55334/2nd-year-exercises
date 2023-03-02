#include <iostream>
using namespace std;

template <typename T> void Swap(T *A,T *B){
    T tmp=*A;
    *A=*B;
    *B=tmp;
}
template <typename T> void BubbleSort(T A[],size_t n){
    int i,j;
    bool swap=1;
    for(i=0;i<n-1 && swap;i++){
        swap=0;
        for(j=0;j<n-1-i;j++){
            if(A[j+1]<A[j]){
                Swap(&A[j+1],&A[j]);
                swap=1;
            }
        }
    }
}
int main(void){
    int l[5]={10,4,3,2,5};
    BubbleSort<int>(l,5);
    for(int i=0;i<5;i++){
        cout<<l[i]<<endl;
    }
}
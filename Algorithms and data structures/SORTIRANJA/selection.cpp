#include <iostream>
using namespace std;
template <typename T> void Swap(T *A,T *B){
    T tmp=*A;
    *A=*B;
    *B=tmp;

}
template <typename T> void selectionSort(T A[],size_t n){
    int i,j,min;
    for(i=0;i<n;i++){
        min=i;
        for(j=i+1;j<n;j++){
            if(A[j]<A[i]){
                min=j;;
            }
        }
        Swap(&A[i],&A[min]);
    }
}

int main(void){
    int l[5]={10,4,3,2,5};
    selectionSort<int>(l,5);
    for(int i=0;i<5;i++){
        cout<<l[i]<<endl;
    }
}
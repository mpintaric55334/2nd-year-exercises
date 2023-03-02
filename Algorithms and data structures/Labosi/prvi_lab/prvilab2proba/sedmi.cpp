#include <iostream>
#include <bits/stdc++.h>
using namespace std;

int *funckija(int polje[],int n){
    int *polj=(int *)malloc(sizeof(int)*n);
    for(int i=0;i<n;i++){
        polj[i]=polje[i]*polje[i];
    }
    srand(time(NULL));
    random_shuffle(polj,polj+n);
    return polj;

}
int main(void){
    int polje[]={1,2,3,4,5,6,7,8,9};
    int *polje2=funckija(polje,9);
    for(int i=0;i<9;i++){
        cout<<polje2[i]<<" ";
    }
}
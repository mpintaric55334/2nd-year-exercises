#include <iostream>
#include <math.h>
using namespace std;

double pi(int n){
    if(n==0){
        return 0;
    }else{
        double dodaj=pow(-1,n-1)/(2*n-1);
        dodaj*=4;
        return dodaj+pi(n-1);
    }
}
int main(void){
    int n;
    cin>>n;
    double *polje=(double *)malloc(sizeof(double)*n);
    for(int i=0;i<n;i++){
        polje[i]=pi(i+1);
        cout<<polje[i]<<endl;
    }
    for(int i=0;i<n;i++){
        cout<<polje[i]<<endl;
    }
}
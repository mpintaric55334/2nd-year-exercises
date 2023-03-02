#include <iostream>
#include <math.h>
using namespace std;
double pi(int n){
    if(n==1){
        return 1*4;
    }else{
        return 1.0*pow(-1,n-1)/(2*n-1)*4+pi(n-1);
    }
}
int main(void){
    int n;
    cin>>n;
    double *polje=(double *)malloc(sizeof(double)*n);
    for(int i=0;i<n;i++){
        polje[i]=pi(i+1);
    }
    for(int i=0;i<n;i++){
        cout<<polje[i]<<endl;
    }
}
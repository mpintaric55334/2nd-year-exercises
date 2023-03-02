#include <iostream>
#include <math.h>
using namespace std;

double exp(double x,int n, int *fakt,double *xpot){
    if(n==0){
        *fakt=1;
        *xpot=1;
        return 1;
    }else{
        
        double dodano=exp(x,n-1,fakt,xpot);
        *fakt*=n;
        *xpot*=x;
        double dodaj=*xpot/(*fakt);
        
        return dodaj+dodano;

    }
}
int main(void){
    int n;
    double x;
    cin>>n;
    cin>>x;
    int fakt;
    double xpot;
    double *A=new double(n);
    for(int i=0;i<n;i++){
        A[i]=exp(x,i,&fakt,&xpot);
    }
    for(int i=0;i<n;i++){
        cout<<A[i]<<endl;
    }
}
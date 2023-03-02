#include <iostream>
#include <math.h>
using namespace std;

void f(int polje[],int n,int m){
    if(n==1){
        polje[n-1]=pow(m,n-1);
    }else{
        f(polje,n-1,m);
        polje[n-1]=pow(m,n-1);
    }
}
int main(void){
    int m,n;
    cin>>m;
    cin>>n;
    int *polje=new int(n);
    f(polje,n,m);
    for(int i=0;i<n;i++){
        cout<<polje[i]<<endl;
    }
}
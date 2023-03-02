#include <iostream>
#include <math.h>
#include <time.h>
using namespace std;

int zbrojiKvadrate(int polje[],int n){
    if(n==0){
        return 0;
    }
    double sq=sqrt(polje[n-1]);
    if(sq+1e-10>floor(sq) && floor(sq)>sq-1e-10){
        return polje[n-1]+zbrojiKvadrate(polje,n-1);
    }else{
        return zbrojiKvadrate(polje,n-1);
    }
}

int main(void){
    srand(time(NULL));
    cout<<"Upiši n: ";
    int n;
    cin>>n;
    int *polje=new int(n);
    for(int i=0;i<n;i++){
        polje[i]=rand()%101 +1;
        cout<<polje[i]<<endl;
    }
    cout<<"Zbroj: "<<zbrojiKvadrate(polje,n)<<endl;
    return 0;
}
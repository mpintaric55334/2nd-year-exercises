#include <iostream>
#include <math.h>
#include <time.h>
using namespace std;

int zbrojiKvadrate(int polje[],int n){
    if(n==0){
        return 0;
    }else{
        float x=sqrt(*polje);
        if(floor(x)<x+1e-8 && floor(x)>x-1e-8){

            return *polje+zbrojiKvadrate(polje+1,n-1);
        }else{
            return zbrojiKvadrate(polje+1,n-1);
        }
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
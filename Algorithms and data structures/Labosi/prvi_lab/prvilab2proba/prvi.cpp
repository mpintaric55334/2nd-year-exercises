#include <iostream>
using namespace std;

void ispis(int polje[],int n){
    if(n==1){
        if(*(polje+n-1)<0){
            cout<<*(polje+n-1)<<endl;
        }
    }else{
        if(*(polje+n-1)<0){
            cout<<*(polje+n-1)<<endl;
        }
        ispis(polje,n-1);
        
    }

}

int main(void){
    int n;
    cin>>n;
    int *polje=(int*)malloc(sizeof(int)*n);
    for(int i=0;i<n;i++){
        cin>>*(polje+i);
    }
    ispis(polje,n);
}
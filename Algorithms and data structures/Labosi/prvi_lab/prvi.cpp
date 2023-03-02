#include <iostream>
using namespace std;

void ispis(float polje[],int n){
    if(n-1!=0){
        ispis(polje,n-1);
    }
    if(polje[n-1]<0){
        cout<<polje[n-1]<<" "<<endl;
    }
}
int main(void){
    float polje[]={-1, -1.2, 2.5, 3.1, -4.17, 5.19, -6.91};
    ispis(polje,7);
}
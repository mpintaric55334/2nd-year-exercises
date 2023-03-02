#include <iostream>
using namespace std;

int main(void){
    int *ptr;
    ptr=(int*)malloc(8*sizeof(int));
    int *ptr2=(int*)malloc(10);
    for(int i=0;i<8;i++){
        ptr[i]=i;
    };
    for(int i=0;i<8;i++){
       cout<<ptr[i]<<endl;
       
    };

}
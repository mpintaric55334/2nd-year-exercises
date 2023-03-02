#include <iostream>
#include <stdio.h>

using namespace std;
void swap(int &a,int &b){
    int tmp=a;
    a=b;
    b=tmp;
}
int main(void){
    int a=3;
    int b=5;
    swap(a,b);
    cout<< a<<" "<<b << endl;
}
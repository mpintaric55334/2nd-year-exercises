#include <iostream>
#include <vector>
#include <time.h>
using namespace std;

int *funck(int *polje,int n){
    int *polje2=new int(n);
    vector<int> v;
    for(int i=0;i<n;i++){
        v.push_back(i);
    }
    srand(time(NULL));
    
    for(int i=0;i<n;i++){
        int m=rand()%v.size();
        int indeks=v[m];
        v.erase(v.begin()+m);
        polje2[indeks]=polje[i]*polje[i];
    }
    return polje2;

}

int main(void){
    int polje[]={1,2,3,4,5,6,7,8,9};
    int *polje2=funck(polje,9);
    for(int i=0;i<9;i++){
        cout<<polje2[i]<<" ";
    }
}
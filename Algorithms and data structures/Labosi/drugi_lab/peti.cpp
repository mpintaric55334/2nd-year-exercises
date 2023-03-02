#include <iostream>
#include <bits/stdc++.h>
#include <time.h>
using namespace std;

class Stog{
    private:
        int lista[10];
        int top=-1;
    public:
        bool push(int item){
            if(top>=10){
                return false;
            }else{
                lista[++top]=item;
                return true;
            }
        }
        bool pop( int &item){
            if(top<0){
                return false;
            }else{
                item=lista[top--];
                return true;
            }
        }

};

int main(void){
    Stog s,sp;
    srand(time(NULL));
    for(int i=0;i<10;i++){
        int broj=rand()%10+1;
        cout<<broj<<" ";
        s.push(broj);
    }
    cout<<endl;
    int item;
    while(s.pop(item)){
        sp.push(item);
    }
    while(sp.pop(item)){
        cout<<item<<endl;
    }

}
#include <iostream>
#include <bits/stdc++.h>
#include <time.h>

using namespace std;

class Stog{
    int polje[10];
    int top=-1;
    public:
        bool push(int broj){
            if(top+1>=10){
                return false;
            }else{
                polje[++top]=broj;
                return true;
            }
        }
        bool pop(int &item){
            if(top>=0){
                item=polje[top--];
                return true;
            }else{
                return false;
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
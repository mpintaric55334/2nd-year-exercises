#include <iostream>
#include <bits/stdc++.h>
using namespace std;

class Stog{
    int polje[100];
    int top=-1;
    public:
        bool dodaj(int broj){
            if(top+1>=100){
                return false;
            }else{
                polje[++top]=broj;
            }
            return true;
        }
        void ispis(){
            cout<<top<<endl;
            while(top>=0){
                cout<<polje[top--]<<" ";
            }
            
        }
};

int main(void){
    Stog s;
    srand(time(NULL));
    for(int i=0;i<101;i++){
        s.dodaj(rand()%100+1);
    }
    s.ispis();
}
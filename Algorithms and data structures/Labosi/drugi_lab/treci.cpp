#include <iostream>
#include <time.h>
using namespace std;

class Stog{
    private:
        int top=-1;
        int lista[100];
    public:
        bool upis(int elem){
            if(top>=100){
                return false;
            }else{
                lista[++top]=elem;
                return true;
            }
        }
        void ispis(){
            cout<<top<<endl;
            while(top>=0){
                
                cout<<lista[top--]<<" ";
            }
        }

};
int main(void){
    Stog s;
    srand(time(NULL));
    for(int i=0;i<101;i++){
        s.upis(rand()%100+1);
    }
    s.ispis();
}
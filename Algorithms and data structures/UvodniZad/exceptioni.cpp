#include <iostream>
using namespace std;

int main(void){
    int v;
    try{
        cin>>v;
        if(v==0){
            throw 0;
        }else if(v==1){
            throw invalid_argument("a");
        }else if(v==2){
            throw "aaa";
        }
    }catch(int i){
        cout<<i<<endl;
    }catch(exception e){
        cout<<e.what()<<endl;
    }catch(const char *t){
        cout<<t<<endl;
    }
}
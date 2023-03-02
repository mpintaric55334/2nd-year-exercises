#include <iostream>
using namespace std;

class MyClass{
    public:
        int a;
        MyClass(int a): a(a){}
        ~MyClass(){
            cout<<"Alpha Mike Foxtrot"<<endl;
        }
};
int main(void){
    MyClass *ptr=new MyClass(5);
    cout<<(*ptr).a<<endl;
    delete ptr;
}
#include <iostream>

using namespace std;
class Point{
    public:
        ~Point(){
            cout<<"Fico peder"<<endl;
        }
};
int main(void){
    Point p;
    delete &p;
}
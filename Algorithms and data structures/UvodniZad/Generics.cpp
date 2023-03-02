#include <iostream>

using namespace std;

template <typename T> class Point{
    public:
        T x;
        T y;
        Point(T x, T y): x(x),y(y){}
        void multiply(){
            cout<<x*y<<endl;
        }
};
int main(void){
    Point<int> p(1,2);
    p.multiply();
    Point<double> d(2.1,1);
    d.multiply();

}
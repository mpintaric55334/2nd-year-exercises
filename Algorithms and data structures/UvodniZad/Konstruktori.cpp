#include <iostream>
using namespace std;
class Point{
    public:
        double x;
        double y;
        Point(double x, double y){
            this->x=x;
            this->y=y;
        }
};
int main(void){
    Point p(2,3);
    cout<<p.x<<" "<<p.y<<endl;
}
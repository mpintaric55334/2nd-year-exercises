#include <iostream>
#include <stdio.h>

class Point{
    public:
        double x;
        double y;
        double multiply(){
            return x*y;
        };
};
int main(void){
    Point p;
    p.x=5;
    p.y=3;
    std::cout<<p.multiply()<<std::endl;
}
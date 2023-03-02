#include <iostream>
using namespace std;

class Razlomak{
    public:
        int brojnik;
        int nazivnik;
        Razlomak(){};
        Razlomak(int brojnik, int nazivnik): brojnik(brojnik), nazivnik(nazivnik){};
        Razlomak operator+(Razlomak other){
            Razlomak r;
            r.nazivnik=nazivnik*other.nazivnik;
            r.brojnik=brojnik*other.nazivnik+other.brojnik*nazivnik;
            return r;
        };
        Razlomak operator*(Razlomak other){
            Razlomak r;
            r.brojnik=brojnik*other.brojnik;
            r.nazivnik=nazivnik*other.nazivnik;
            return r;
        };

        friend ostream &operator<<(ostream &os,Razlomak r){
            os<<r.brojnik<<" / "<<r.nazivnik;
            return os;
        }

        friend istream &operator>>(istream &is,Razlomak r){
            is>>r.brojnik>>r.nazivnik;
            return is;
        }
};

int main(void){
    Razlomak a(1,2),b(3,4),c(1,3);
    cout<<a+b<<endl;
    return 0;
}
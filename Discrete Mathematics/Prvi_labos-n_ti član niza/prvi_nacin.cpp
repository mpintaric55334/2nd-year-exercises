#include <iostream>
#include <math.h>
using namespace std;
//rekurzivna funkc
double rekurzivna(int n,double lam1, double lam2, double a0, double a1){
    if(n==0){
        return a0;
    }else if(n==1){
        return a1;
    }else{
        return lam1*rekurzivna(n-1,lam1,lam2,a0,a1)+lam2*rekurzivna(n-2,lam1,lam2,a0,a1);
    }
}

int main(void){
    double lam1;
    double lam2;
    double a0;
    double a1;
    int n;
    double x1,x2;
    double an;
    cout<<"Unesite prvi koeficijent λ_1 rekurzivne relacije: ";
    cin>>lam1;
    cout<<"Unesite drugo koeficijent λ_2 rekurzivne relacije: ";
    cin>>lam2;
    cout<<"Unesite vrijednost nultog clana niza a_0: ";
    cin>>a0;
    cout<<"Unesite vrijednost prvog clana niza a_1: ";
    cin>>a1;
    cout<<"Unesite redni broj n trazenog clana niza: ";
    cin>> n;
    //PRVI NACIN
    x1=(lam1+sqrt(lam1*lam1+4*lam2))/2;
    x2=(lam1-sqrt(lam1*lam1+4*lam2))/2;
    double u1,u2;
    //AKO JE DVOSTRUKA NUL-TOČKA
    if(x1 != x2){
        u1=(a1-a0*x2)/(x1-x2);
        u2=a0-u1;
        an=u1*pow(x1,n)+u2*pow(x2,n);
        cout<<"Vrijednost n-tog clana niza pomocu formule: "<<an<<endl;
    }
    //JEDNOSTRUKA NUL-TOČKA
    if(x1==x2){
        u1=a0;
        u2=(a1-u1*x1)/x1;
        an=u1*pow(x1,n)+n*u2*pow(x2,n);
        cout<<"Vrijednost n-tog clana niza pomocu formule: "<<an<<endl;
    }
    //REKURZIVNO
    cout<<"Vrijednost n-tog clana niza iz rekurzije: "<<rekurzivna(n,lam1,lam2,a0,a1)<<endl;
    

}
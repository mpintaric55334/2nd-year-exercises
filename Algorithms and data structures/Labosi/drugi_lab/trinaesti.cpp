#include <iostream>
#include <bits/stdc++.h>
using namespace std;

template <class T> void swap(T &A,T &B){
    T tmp;
    tmp=A;
    A=B;
    B=tmp;
}
class Vozilo{
    private:
        string model;
        int godina;
    public:
        Vozilo(){};
        Vozilo(string model,int godina):model(model),godina(godina){};
        string getModel(){
            return model;
        }
        int getGodina(){
            return godina;
        }
        void setModel(string model2){
            model=model2;
        }
        void setGodina(int godina2){
            godina=godina2;
        }

        Vozilo &operator=(Vozilo &vozilo){
            godina=vozilo.getGodina();
            model=vozilo.getModel();
            return *this;

        }
        int operator<(Vozilo vozilo){
            if(model!=vozilo.getModel()){
                return model<vozilo.getModel();
            }else{
                return godina>vozilo.getGodina();
            }
        }

};
template <class T> void selectionSort(T A[],int n){
    int i,j,min_i;
    T min;
    for(i=0;i<n;i++){
        min=A[i];
        min_i=i;
        for(j=i;j<n;j++){
            if(A[j]<min){
                min=A[j];
                min_i=j;
            }
        }
        swap(A[i],A[min_i]);
    
    }
}


int main(void){
    string model;
    int godina;
    int n;
    cin>>n;
    Vozilo *polje=new Vozilo[n];
    for(int i=0;i<n;i++){
        cin>>model;
        cin>>godina;
        Vozilo v(model,godina);
        polje[i]=v;
    }
    selectionSort<Vozilo>(polje,n);
    for(int i=0;i<n;i++){
        cout<<polje[i].getModel()<<" "<<polje[i].getGodina()<<endl;
    }
}
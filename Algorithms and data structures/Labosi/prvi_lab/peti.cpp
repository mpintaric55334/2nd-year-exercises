#include <iostream>
using namespace std;

template <typename T> int binarnoTrazi(T polje[],int n,T x){
    int pocetak=0;
    int kraj=n-1;
    int polovica;

    while(pocetak<=kraj){
        
        polovica=(kraj-pocetak)/2+pocetak;
        T x1=polje[polovica];
        if(x<x1+1e-8 && x>x1-1e-8){
            return polovica;
            break;
        }else if(x<x1){
            kraj=polovica-1;
        }else{
            pocetak=polovica+1;
        }
        
    }
    return -1;


}
int main(void){
    int n;
    cin>>n;
    double x;
    cin>>x;
    float *A=new float(n);
    for(int i=0;i<n;i++){
        A[i]=1.1*i;

    }
    int s=binarnoTrazi<float>(A,n,x);
    if(s!=-1){
        cout<<s<<endl;
    }else{
        cout<<"Nije u polju"<<endl;
    }
}
#include <iostream>
using namespace std;

char *ostaviSlova(string ulaz){
    char *niz=new char(ulaz.length());
    int j=0;
    for(int i=0;i<ulaz.length();i++){
        if(isalpha(ulaz[i])){
           *(niz+j)=ulaz[i];
           j+=1;
            
        }
    }
    return niz;
}
int main(void){
    string ulaz="asp12_i_ASP13";
   
    cout<<ostaviSlova(ulaz)<<endl;
}
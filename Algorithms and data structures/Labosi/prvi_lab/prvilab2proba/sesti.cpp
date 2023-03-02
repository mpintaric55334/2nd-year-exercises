#include <iostream>
using namespace std;

char *ostaviSlova(string ulaz){
    int duljina=0;
    for(int i=0;i<ulaz.length();i++){
        if(isalpha(ulaz[i])){
            duljina+=1;
        }
    }
    char *niz=(char*)malloc(sizeof(char)*duljina);
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
    string s="asp12_i_ASP13";
    string s2=ostaviSlova(s);
    cout<<s2<<endl;
}
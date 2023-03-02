#include <iostream>

using namespace std;

class Bager{
    public:
        int godine;
        int visina;
        Bager(int godine,int visina):godine(godine){
            
            this->visina=visina;
        }
        virtual void sukljaj()=0;
        static int a;
        static void aa(){a=0;}
};
class Golemi: public Bager{
    public:
        int retardacija;
        Golemi(int godine, int visina, int retardacija) : Bager(godine,visina), retardacija(retardacija){cout<<"Golemi"<<endl;};
        void sukljaj(){
            cout<<"Sukljaj mi"<<endl;
        }
        
};
class Keksa:public Bager{
    public:
        int najjaci;
        Keksa(int godine,int visina,int najjaci):Bager(godine,visina),najjaci(najjaci){cout<<"Keksa"<<endl;};
        void sukljaj(){
            cout<<"Sukljaj mi"<<endl;
        }
};
class Lovre:public Bager{
    public:
        int malisa;
        Lovre(int godine, int visina, int malisa):Bager(godine,visina),malisa(malisa){cout<<"aaa"<<endl;};
        void sukljaj(){
            cout<<"Sukljaj mi"<<endl;
        }
};
int Bager::a=3;
int main(void){
    
    cout<<Bager::a<<endl;
    Bager::aa();
    cout<<Bager::a<<endl;
    Keksa k(20,189,1);
    k.sukljaj();
    Golemi g(20,120,1000);
    g.sukljaj();
    Lovre l(20,80,1000);
    l.sukljaj();
}
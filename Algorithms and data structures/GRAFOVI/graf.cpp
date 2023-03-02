#include<iostream>
#include <list>
#include <stack>
#include <queue>
using namespace std;

template <typename T> struct Vertex{
    bool proden=false;
    int *susjedi;

};

template <typename T> class Graph{
   
    public:
         list<int> *listeSusjedstva;
        bool *obideni;
        int brojVrhova;
        Graph(){
            brojVrhova=5;
            obideni=new bool[5];
            listeSusjedstva=new list<int>[5];
            obideni[0]=0;
            obideni[1]=0;
            obideni[2]=0;
            obideni[3]=0;
            obideni[4]=0;
            list<int> prvi;
            list<int> drugi;
            list<int> treci;
            list<int> cetvrti;
            list<int> peti;
            prvi.push_back(1);prvi.push_back(2);
            drugi.push_back(0);drugi.push_back(3);
            treci.push_back(0);treci.push_back(4);
            cetvrti.push_back(1);
            peti.push_back(2),
            listeSusjedstva[0]=prvi;
            listeSusjedstva[1]=drugi;
            listeSusjedstva[2]=treci;
            listeSusjedstva[3]=cetvrti;
            listeSusjedstva[4]=peti;

        }
        void DFSR(int v){
            obideni[v]=true;
            cout<<v<<" ";
            list<int> listaSusjeda=listeSusjedstva[v];
            list<int>::iterator i;
            for(i=listaSusjeda.begin();i!=listaSusjeda.end();++i){
                if(!obideni[*i]){
                    DFSR(*i);
                }
            }
        }
        void DFS(int v){
            stack<int> s;
            s.push(v);
            while(!s.empty()){
                int p=s.top();
                s.pop();
                if(!obideni[p]){
                    cout<<p<<" ";
                    obideni[p]=true;
                    list<int> l=listeSusjedstva[p];
                    list<int>::iterator i;
                    for(i=l.begin();i!=l.end();++i){
                        if(!obideni[*i]){
                            s.push(*i);
                        }
                    }
                }
            }
        }
        void BFS(int v){
            queue<int> q;
            obideni[v]=true;
            cout<<v<<" ";
            q.push(v);
            while(!q.empty()){
                int p=q.front();
                q.pop();
                list<int> l=listeSusjedstva[p];
                list<int>::iterator i;
                for(i=l.begin();i!=l.end();++i){
                    if(!obideni[*i]){
                        cout<<*i<<" ";
                        obideni[*i]=true;
                        q.push(*i);
                    }
                }
            }
        }

        void DFSR2(int v){
            if(!obideni[v]){
                obideni[v]=true;
                cout<<v<<" ";
                list<int>::iterator i;
                list<int> l=listeSusjedstva[v];
                for(i=l.begin();i!=l.end();++i){
                    DFSR2(*i);
                }
            }
        }
        void DFS2(int v){
            stack<int> s;
            s.push(v);
            while(!s.empty()){
                int p=s.top();
                s.pop();
                
                if(!obideni[p]){
                    cout<<p<<" ";
                    list<int> l=listeSusjedstva[p];
                    obideni[p]=true;
                    list<int>::iterator i;
                    for(i=l.begin();i!=l.end();++i){
                        s.push(*i);
                    }
                }
            }
        }
        void BFS2(int v){
            queue<int> q;
            obideni[v]=true;
            cout<<v<<" ";
            q.push(v);
            while(!q.empty()){
                int p=q.front();
                q.pop();
                list<int>::iterator i;
                list<int> l=listeSusjedstva[p];
                for(i=l.begin();i!=l.end();++i){
                    if(!obideni[*i]){
                        obideni[*i]=true;
                        cout<<*i<<" ";
                        q.push(*i);
                    }
                }
            }
            
        }

};

int main(void){
    Graph<int> g;
    
    g.DFSR(0);
    cout<<endl;
    

}
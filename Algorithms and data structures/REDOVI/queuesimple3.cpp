#include <iostream>
using namespace std;

template <class T> class Queue{
    private:
        int read=0;
        int write=0;
        static const size_t MAX=100;
        T queue[MAX];
    public:
        bool enqueue(T item){
            if((write+1)%MAX==read){
                return false;
            }
            queue[write]=item;
            write=(write+1)%MAX;
            return true;
        }
        bool dequeue(T &item){
            if(write==read){
                return false;
            }
            item=queue[read];
            read=(read+1)%MAX;
            return true;
        }

        int count(){
            if(write>=read){
                return write-read;
            }else{
                return write-read+MAX;
            }
        }
        T prvi(){
            Queue<T> pom;
            T elem;
            while(dequeue(elem)){
                pom.enqueue(elem);
            }
            pom.dequeue(elem);
            enqueue(elem);
            return elem;
        }
        bool peek(int &el,int index){
            int i=0;
            Queue<T> pom;
            T elem;
            T elemr;
            bool found=false;
            while(this->dequeue(elem)){
                pom.enqueue(elem);
                if(i==index){
                    elemr=elem;
                    found=true;
                }
                i++;
            }
            while(pom.dequeue(elem)){
                this->enqueue(elem);
            }
            el=elemr;
            if(!found){
                el=0;
            }
            return found;
        }
};

int main(void) {
   Queue<int> q;
   int item;
   q.enqueue(1);
   q.enqueue(2);
   q.enqueue(3);
   q.peek(item,4);
   cout<<item;
   cout << endl;
   return 0;
}
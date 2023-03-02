#include <iostream>
using namespace std;

template <class T> class Stack{
    private:
        static const size_t increment=100;
        size_t size=100;
        T* stack;
        int top=-1;
    public:
        Stack(){stack=(T*)malloc(size*sizeof(T));}
        Stack(size_t size):size(size){stack=(T*)malloc(size*sizeof(T));}

        bool push(T item){
            if(top>=size){
                T *tmp=(T*)realloc(stack,(size+increment)*sizeof(T));
                if(!tmp){
                    return false;
                }
                stack=tmp;
                size+=increment;
            }
            stack[++top]=item;
            return true;
        }
        bool pop(T &item){
            if(top<0){
                return false;
            }
            item=stack[top--];
            if(top != -1 && top<size-increment){
                T *tmp=(T*)realloc(stack,(size-increment)*sizeof(T));
                if(!tmp){
                    return false;
                }
                stack=tmp;
                size-=increment;
            }
            return true;
        }
        T peek(){
            T r;
            while(pop(r)){

            }
            push(r);
            return r;
        }
        bool peek2(int &el,int indeks){
            int i=0;
            Stack<T> pom;
            T elem;
            bool found=false;
            while(this->pop(elem)){
                pom.push(elem);
                if(i==indeks){
                    el=elem;
                    found=true;
                    break;
                }
                i++;
            }
            while(pom.pop(elem)){
                push(elem);
            }
            return found;

        }
        void remove(){
            Stack<T> pom;
            int length=0;
            T elem;
            while(pop(elem)){
                pom.push(elem);
                length+=1;
            }
            
            T *array=new T(length);
            int i=0;
            for(i=0;i<length;i++){
                pom.pop(elem);
                
                array[i]=elem;
                
            }
            int pozicije[length]={0};
            for(i=length-1;i>=0;i--){
                for(int j=length-1;j>=0;j--){
                    if(array[i]==array[j]){
                        if(pozicije[i]==0){
                            pom.push(array[i]);
                            pozicije[i]=1;
                            pozicije[j]=1;
                        }else{
                            pozicije[j]=1;
                        }
                    }
                }
                
            }
            while(pom.pop(elem)){
                push(elem);
            }

         }
         void remove2(){
             Stack<T> s1,s2;
             T elem,x;
             while(pop(elem)){
                 s1.push(elem);
                 while(pop(x)){
                     if(x!=elem){
                         s2.push(elem);
                     }
                 }
                 while(s2.pop(x)){
                     push(x);
                 }

             }
             while(s1.pop(elem)){
                 push(elem);
             }
         }

};

int main(void) {
   Stack<int> s;
   int item;
   s.push(1);
   s.push(3);
   s.push(2);
   s.push(7);
   s.push(2);
   s.push(3);
   s.push(4);
   s.push(1);
   s.push(1);
   s.remove();
   while (s.pop(item))
      cout << item << " ";
   cout << endl;
   cout << endl;
   return 0;
}
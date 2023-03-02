#include "Hash.h"
#include <iostream>
using namespace std;
#define M 5000

template <typename T,typename K> class Dabl:public IHash<T,K>{
    public:
        IHashableValue<T,K> **hash;
        void Empty(){
            size_t i;
            for(i=0;i<this->size;i++){
                hash[i]=nullptr;
            }
        }
        int HashDoubleHashing1(int key) const { return key % M; }
        int HashDoubleHashing2(int key) const { return 1 + key % (M - 1); }
    private:
        virtual void Add(IHashableValue<T,K> *element){
            int h1=HashDoubleHashing(element->GetKey());
            int h2=HashDoubleHashing(element->GetKey());
            size_t i;
            int index;
            for(i=0;i<this->size;i++){
                index=(h1+i*h2)%this->size;
                if(hash[index]==nullptr){
                    hash[index]=element;
                    break;
                }
            }
        }
        virtual IHashableValue<T,K> *Get(K key){
            int h1=HashDoubleHashing(element->GetKey());
            int h2=HashDoubleHashing(element->GetKey());
            int i;
            int index;
            for(int i=0;i<this->size;i++){
                index=(h1+i*h2)%this->size;
                if(hash[index]!=nullptr && (*hash[index]).GetKey()==key){
                    return hash[index];
                }
            }
            
        }


};
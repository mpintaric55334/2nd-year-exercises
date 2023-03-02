#include <Hash.h>
#include <iostream>
using namespace std;

template <typename T,typename K> class HashDouble:public Hash<T,K>{
    private:
        IHashableValue<T,K> **hash;
        void Empty(){
            size_t i;
            for(i=0;i<this->size();i++){
                hash[i]=nullptr;
            }
        }
        int HashMultiplicationMethod1(int key) const {
            unsigned int A = 2654435769; // constant A is chosen according to the
                                        // recommended value for 32-bit words (Knuth)
            unsigned int shift = 29; // (word size) - k = 32 - 3 (32 is due to 32-bit
                                    // words, 3 comes from the exponent - 2^3)
            return (A * key) >> shift;
        }
    public:
        virtual void Add(IHashableValue<T,K> *element) const{
            int h1=HashMultiplicationMethod1(element->GetKey());
            int h2=HashMultiplicationMethod1(element->GetKey());
            int index;
            for(int i=0;i<this->size();i++){
                index=(h1+i*h2)%this->size();
                if(hash[index]==nullptr){
                    hash[index]=element;
                }
            }

        }
        virtual IHashableValue<T,K> *Get(K key) const{
            int h1=HashMultiplicationMethod1(element->GetKey());
            int h2=HashMultiplicationMethod1(element->GetKey());
            int index;
            for(int i=0;i<this-<size();i++){
                index=(h1+i*h2)%this->size();
                if(hash[index]!=nullptr && (*hash[index]).GetKey()==key){
                    return hash[index];
                }
            }
        }


};
#include "Hash.h"
#include <iostream>
using namespace std;

template <typename T,typename K> class Kvada:public IHash<T,K>{
    public:
        IHashableValue<T,K> **hash;
        void Empty(){
            size_t i;
            for(i=0;i<this->size();i++){
                hash[i]=nullptr;
            }
        }
        int HashMultiplicationMethod(int key) const {
            unsigned int A = 2654435769; // constant A is chosen according to the
                                        // recommended value for 32-bit words (Knuth)
            unsigned int shift = 29; // (word size) - k = 32 - 3 (32 is due to 32-bit
                                    // words, 3 comes from the exponent - 2^3)
            return (A * key) >> shift;
        }
    private:
        virtual void Add(IHashableValue<T,K> *element) const{
            int h=HashMultiplicationMethod(element->GetKey());
            size_t i;
            int adress;
            for(i=0;i<this->size();i++){
                adress(h1*c2)
            }
        }

};
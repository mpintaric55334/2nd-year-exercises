#include "Hash.h"
#include <iostream>

#define M 1000

template <typename T,typename K> class Lancic:public IHash<T,K>{
    private:

        HashElement<T,K> **hash;
        void Empty(){
            size_t i;
        }
        int HashStringToInt(string stringArray,size_t HashSize) const{
            size_t ascii_value = 0;
            for (size_t i = 0; i < stringArray.size(); i++) {
                ascii_value += (int)stringArray[i];
            }
            return ascii_value % hashSize;
        }
    public:
        virtual void Add(HashElement<T,K> *elem) const{
            int index=HashStringToInt(*elem->value->GetKey(),this->size);
            HashElement<T,K> *el=new HashElement<T,K>(elem);
            el->next=hash[index];
            hash[index]=el;
            
        }
        virtual IHashableValue<T,K> *Get(K key) const{
            int index=HashStringToInt(*elem->value->GetKey(),this->size);
            HashElement<T,K> *head;
            for(head=hash[index];head && (head->value->GetKey())!=key;head=head->next);
            return head->value;
        }

};
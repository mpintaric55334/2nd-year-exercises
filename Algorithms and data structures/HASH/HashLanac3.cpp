#include "Hash.h"
#include <iostream>
using namespace std;

template <typename T,typename K> class Lanac:public IHash<T,K>{
    public:
        HashElement<T,K> **hash;
        void Empty(){
            size_t i;
            for(i=0,i<this->size;i++){
                hash[i]=nullptr;
            }
        }
        int HashStringToInt(string stringArray,size_t HashSize) const{
            size_t ascii_value = 0;
            for (size_t i = 0; i < stringArray.size(); i++) {
                ascii_value += (int)stringArray[i];
            }
            return ascii_value % hashSize;
        }
    private:
        virtual void Add(HashElement<T,K> *element) const{
            int i=HashStringToInt(element->value->GetKey(),this->size);
            HashElement<T,K> *elem=new HashElement<T,K>(element);
            elem->next=hash[i];
            hash[i]=elem;
        }
        virtual HashElement<T,K> *Get(K key){
            int i=HashStringToInt(element->value->GetKey(),this->size);
            HashElement<T,K> *head;
            for(head=hash[i];head &&(head->value->GetKey())!=key){
                head=head->next;
            }
            if(head==nullptr){
                return nullptr;
            }
            return head->value;
        }
        Lanac(size_t size){
            this->size=size;
            this->hash=new HashElement<T,K> *[this->size];
            this->Empty();
        }
};
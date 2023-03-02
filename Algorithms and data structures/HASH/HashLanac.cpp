#include "Hash.h"
#include <iostream>
#include <string>

template <typename T,typename K> class HashLanac:public IHash<T,K>{
    private:
        HashElement<T,K> **hash;
        void Empty(){
            size_t i;
            for(i=0;i<this->size;i++){
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
    public:
        virtual void Add(IHashableValue<T,K> *elem) const{
            int i=HashStringToInt(element->getKey(),this->size);
            HashElement<T,K> *el=new HashElement<T,K>(elem);
            el->next=hash[i];
            hash[i]=el->next;

        }

        virtual IHashableValue<T,K> *Get(K key) const{
            int i=HahsStringToInt(element->getKey(),this->size);
            HashElement<T,K> *head;
            for(head=hash[i];head &&(head->value->GetKey()!=key)){
                head=head->next;
            }
            return head->value;
        }
        virtual void Print() const {
        size_t i;
        HashElement<T, K> *tmp;
        std::cout << "Ispis sadrzaja tablice:\n";
        for (i = 0; i < this->size; i++) {
            std::cout << i << " ";
            tmp = hash[i];
            while (tmp != nullptr) {
                std::cout << tmp->value->GetKey() << " ";
                tmp = tmp->next;
         }
         std::cout << "\n";
      }
   }
};

#include <iostream>

using namespace std;

struct Person{
    int num;
    string name;
};

class List{
    struct ListElement{
        Person data;
        ListElement *numNext;
        ListElement *nameNext;
    };
    public: 
        ListElement *numberHead = nullptr;
        ListElement *nameHead = nullptr;

        insert(Person data){
            
        }
};
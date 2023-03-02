#include <iostream>
using namespace std;

class SanitizedString{
    private: 
        string str;
    public:
    SanitizedString(string str):str(str){};
        void removeDuplicateWhiteSpace(){
            string strcpy="";
            for(int i=0;i<str.length()-1;i++){
                if(str[i]!=32){
                    strcpy+=str[i];
                }else{
                    if(str[i+1]!=32){
                        strcpy+=str[i];
                    }
                }
            }
            str=strcpy;

        }
        void removeNonAlphaChars(){
            string strcpy="";
            for(int i=0;i<str.length();i++){
                if(isalpha(str[i])){
                    strcpy+=str[i];
                }
            }
            str=strcpy;
        }

        friend ostream &operator<<(ostream &os,SanitizedString s){
            os<<s.str;
            return os;
        }

};
int main(void){
    SanitizedString st=SanitizedString("M~     ir4ko   &“");
    st.removeDuplicateWhiteSpace();
    st.removeNonAlphaChars();
    cout<<st<<endl;

}
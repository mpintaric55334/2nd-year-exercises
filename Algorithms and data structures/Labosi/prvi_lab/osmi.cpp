#include <iostream>
using namespace std;

class SanitizedString{
    private:
        string str;
    public:
        SanitizedString(string str):str(str){};
        void removeDuplicateWhitespace(){
            string strcp="";
            for(int i=0;i<str.length();i++){
                if(str[i]!=32){
                    strcp+=str[i];
                }else if(i+1<str.length()){
                    if(str[i+1]!=32){
                        strcp+=" ";
                    }
                }else{
                    strcp+=" ";
                }
            }
            str=strcp;
            
        }
        void removeNonAlphaChars(){
            string strcp="";
            for(int i=0;i<str.length();i++){
                if(isalpha(str[i])){
                    strcp+=str[i];
                }
            }
            str=strcp;
        }
        friend ostream &operator<<(ostream &os,SanitizedString &s){
            os<<s.str;
            return os;
        }

};
int main(void){
    SanitizedString st=SanitizedString("M~     ir4ko   &“");
    st.removeDuplicateWhitespace();
    st.removeNonAlphaChars();
    cout<<st<<endl;

}
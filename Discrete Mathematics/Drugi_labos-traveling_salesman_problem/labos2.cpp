#include <iostream>
#include <bits/stdc++.h>
#include <vector>
#include <algorithm>
using namespace std;
void printMatrica(vector<vector<int>> matrix){
    for(int i=0;i<matrix.size();i++){
        for(int j=0;j<matrix.size();j++){
            cout<<matrix[i][j]<<" ";
        }
        cout<<endl;
    }
}
int brute(vector<vector<int>> matrix,int n){
    int pocetni=0;
    vector<int> cvorovi;
    for (int i = 0; i < n; i++)
   {
      if (i != pocetni)
      {
         cvorovi.push_back(i);
      }
   }
   int najkraci = INT_MAX;
   int m=cvorovi.size();
   while (next_permutation(cvorovi.begin(), cvorovi.end())){
       int tezina=0;
       int j=pocetni;
       for (int i = 0; i < m; i++)
      {
         tezina += matrix[j][cvorovi[i]];
         j = cvorovi[i];
      }
      tezina += matrix[j][pocetni];

      najkraci = min(najkraci, tezina);
   }
   return najkraci;
}

int pohlepni(vector<vector<int>> matrix){
    int ukupno=0;
    int i,j;
    int minimalni_put=INT_MAX;
    bool lista_bili[matrix.size()];
    for(int z=0;z<matrix.size();z++){
        lista_bili[z]=false;
    }
    for (int z = 0; z< matrix.size(); z++)
    {
      for (int t = 0; t < matrix[z].size(); t++)
      {
         if (matrix[z][t] < minimalni_put && z != t)
         {
            minimalni_put = matrix[z][t];
            i = z;
            j = t;
         }
      }
    }
    lista_bili[i]=true;
    lista_bili[j]=true;
    ukupno+=minimalni_put;
    for(int z=0;z<matrix.size()-2;z++){
        int prvi=0;//koordinate sljedeceg
        int drugi=0;
        int manji1=INT_MAX;
        int manji2=INT_MAX;
        for(int t=0;t<matrix.size();t++){
            if(lista_bili[t]){
                continue;
            }
            if(i!=t){//nije dijag
                if(matrix[i][t]<manji1){
                    manji1=matrix[i][t];
                    prvi=t;
                }
            }
            if(j != t){
                if(matrix[j][t]<manji2){
                    manji2=matrix[j][t];
                    drugi=t;
                }
            }
        }
        if(manji1<=manji2){
            i=prvi;
            lista_bili[i]=true;
            ukupno+=manji1;
        }else{
            j=drugi;
            lista_bili[j]=true;
            ukupno+=manji2;
        }
    }
    ukupno+=matrix[i][j];
    return ukupno;
    
}

int main(void){
    int a,b,n,brute2,pohlepni2;
    cout << "Unesite redom, odvojene razmakom, parametre n, a i b: ";
    cin >> n >> a >> b;
    cout << "\n";
    vector<vector<int>> matrix(n, vector<int>(n));
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            if (i == j)
                matrix[i][j] = 0;
            else if (i < j)
                matrix[i][j] = (a * (i + 1) + b * (j + 1)) * (a * (i + 1) + b * (j + 1)) + 1;
            else
                matrix[i][j] = (a * (j + 1) + b * (i + 1)) * (a * (j + 1) + b * (i + 1)) + 1;
        }
    }
    brute2=brute(matrix,n);
    pohlepni2=pohlepni(matrix);
    cout << "Pohlepni algoritam nalazi ciklus duljine " << pohlepni2 << endl;
    cout << "Iscrpni algoritam nalazi ciklus duljine " << brute2 << endl;
    cout << "\n";
    if (pohlepni2<= brute2)
        cout << "Pohlepni algoritam na ovom grafu daje optimalno rjesenje!\n ";
    else
        cout << "Pohlepni algoritam na ovom grafu ne daje optimalno rjesenje! \n";
    cout << "\n";
    return 0;

}
#include <iostream>
#include <bits/stdc++.h>
using namespace std;

void swap(int &a,int &b){
    int tmp=a;
    a=b;
    b=tmp;
}

void selection2Sort(int arr[],int n,char smjer){
    for (int i = 0, j = n - 1; i < j; i++, j--) {
        int min = arr[i], max = arr[i];
        int min_i = i, max_i = i;
        for (int k = i; k <= j; k++)  {
            if (arr[k] > max) {
                max = arr[k];
                max_i = k;
            } else if (arr[k] < min) {
                min = arr[k];
                min_i = k;
            }
        }
 
        if(smjer=='0'){
            // shifting the min.
            swap(arr[i], arr[min_i]);
 
        // Shifting the max. The equal condition
        // happens if we shifted the max to arr[min_i]
        // in the previous swap.
            if (arr[min_i] == max)
                swap(arr[j], arr[min_i]);
            else
                swap(arr[j], arr[max_i]);
        }
        if(smjer=='1'){
            // shifting the min.
            swap(arr[j], arr[min_i]);
 
        // Shifting the max. The equal condition
        // happens if we shifted the max to arr[min_i]
        // in the previous swap.
            if (arr[min_i] == max)
                swap(arr[i], arr[min_i]);
            else
                swap(arr[i], arr[max_i]);
        }
        
    }
            
}
int main(void) {
    int n;
    char smjer;
    cin >> n;
    int arr[n];
    for(int i=0; i<n; i++) cin >> arr[i];
    cin >> smjer;
    selection2Sort(arr, n, smjer);
    for(int i=0; i<n; i++) cout << arr[i] << " ";
    cout << endl;
}        


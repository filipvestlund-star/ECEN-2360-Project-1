#include <iostream>
using namespace std;

int mod(int a, int b){
    return a % b;
}

int main(){
    int a = 5;
    int b = 3;
    cout << mod(a,b);
    return 0;
}
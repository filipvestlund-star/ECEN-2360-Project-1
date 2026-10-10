#include <iostream>
using namespace std;

int full_adder(int &a, int &b){
return a + b;
}

int main(){
    int a  = 10;
    int b = 15;
    cout << full_adder(a, b);
    return 0;
}
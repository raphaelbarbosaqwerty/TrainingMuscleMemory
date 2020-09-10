#include <iostream>

using namespace std;

int main()
{
    double* arrayDouble = new double[50];

    if(!arrayDouble) {
        return 0;
    }

    for(int indexOfArray = 0; indexOfArray < 50; indexOfArray++) {
        arrayDouble[indexOfArray] = indexOfArray * 1000;
    }

    for(int indexOfArray = 0; indexOfArray < 50; indexOfArray++) {
        cout << "\narrayDouble[" << indexOfArray << "] = " << arrayDouble[indexOfArray];
    }

    cout << "\nDelete array...";
    if(arrayDouble) {
        delete[] arrayDouble;

        return 0;
    }
}

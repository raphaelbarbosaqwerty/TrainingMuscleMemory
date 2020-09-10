#include <iostream>

using namespace std;

int main()
{
    int intArray[7];

    for(int indiceToArray = 0; indiceToArray < 7; indiceToArray++) {
        intArray[indiceToArray] = indiceToArray * 3;
    }

    for(int indiceToArray = 0; indiceToArray < 7; indiceToArray++) {
        cout << "\nValue " << indiceToArray << " = " << intArray[indiceToArray];
    }
    return 0;
}

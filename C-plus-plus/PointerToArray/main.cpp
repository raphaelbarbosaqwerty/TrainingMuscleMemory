#include <iostream>

using namespace std;

int integerArray[] = {10, 15, 296, 3, 18};

int main()
{
    int *arrayPointer;
    int indexOfArray;

    arrayPointer = &integerArray[0];

    for(indexOfArray = 0; indexOfArray < 5; indexOfArray++) {
        cout << "integerArray[" << indexOfArray << "] = " << *arrayPointer << "\n";
        arrayPointer++;
    }
}

#include <iostream>

using namespace std;

int integerArray[] = {10, 15, 29, 36, 18};

int main()
{
    int *arrayPointer = integerArray;
    int indexOfArray;

    for(indexOfArray = 0; indexOfArray < 5; indexOfArray++) {
        cout << "integerArray [" << indexOfArray << "] = " << *arrayPointer++ << "\n";
    }

    return 0;
}

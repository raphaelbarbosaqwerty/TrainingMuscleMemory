#include <iostream>

using namespace std;

int main()
{
    int indexOfArray;
    int integerArray[5];

    integerArray[0] = 205;
    integerArray[1] = 32;
    integerArray[2] = 99;
    integerArray[3] = 1000;
    integerArray[4] = 1234;

    cout << "*** Values *** \t *** Address ***\n\n";

    for(indexOfArray = 0; indexOfArray < 5; indexOfArray = indexOfArray + 1) {

        cout << "integerArray[" << indexOfArray << "] = " << integerArray[indexOfArray];
        cout << "\t&integerArray[" << indexOfArray << "] = " << &integerArray[indexOfArray] << "\n";
    }

    return 0;
}

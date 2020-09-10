#include <iostream>

using namespace std;

void tradeValues(int&, int&);

int main()
{
    int integerValueOne = 10, integerValueTwo = 20;

    cout << "\n*** Value before the tradeValues() ***\n";
    cout << "\nintegerValueOne = " << integerValueOne << "\tintegarValueTwo = " << integerValueTwo;

    tradeValues(integerValueOne, integerValueTwo);

    cout << "\n*** Values after the tradeValues() ***\n";
    cout << "\nintegerValueOne = " << integerValueOne << "\tintegerValueTwo = " << integerValueTwo;

    return 0;
}

void tradeValues(int& referenceOne, int& referenceTwo)
{
    int tempValue;
    cout << "\nWe are in the function tradeValues()\n";
    cout << "\nreferenceOne = " << referenceOne << ", referenceTwo = " << referenceTwo;

    cout << "\nChanging values...\n";

    tempValue = referenceOne;
    referenceOne = referenceTwo;
    referenceTwo = tempValue;

    cout << "\nAfter tradeValue...";
    cout << "\nvalueOne = " << referenceOne << ", referenceTwo = " << referenceTwo;
}

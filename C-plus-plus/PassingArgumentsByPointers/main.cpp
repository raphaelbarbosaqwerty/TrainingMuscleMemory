#include <iostream>

using namespace std;

void tradeValues(int*, int*);

int main()
{
    int integerValueOne = 10, integerValueTwo = 20;

    cout << "\n*** Value before the tradeValues() ***\n";
    cout << "\nintegerValueOne = " << integerValueOne << "\tintegarValueTwo = " << integerValueTwo;

    tradeValues(&integerValueOne, &integerValueTwo);

    cout << "\n*** Values after the tradeValues() ***\n";
    cout << "\nintegerValueOne = " << integerValueOne << "\tintegerValueTwo = " << integerValueTwo;

    return 0;
}

void tradeValues(int* valueOne, int* valueTwo)
{
    int tempValue;
    cout << "\nWe are in the function tradeValues()\n";
    cout << "\n*valueOne = " << *valueOne << ", *valueTwo = " << *valueTwo;

    cout << "\nChanging values...\n";

    tempValue = *valueOne;
    *valueOne = *valueTwo;
    *valueTwo = tempValue;

    cout << "\nAfter tradeValue...";
    cout << "\nvalueOne = " << *valueOne << ", valueTwo = " << *valueTwo;
}

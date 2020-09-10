#include <iostream>

using namespace std;

int doubleNumber(int);
float doubleNumber(float);

int main()
{
    int intValue, intResult;
    float floatValue, floatResult;

    cout << "\nEnter a integer value + <Enter>: ";
    cin >> intValue;

    cout << "\nCalling int doubleNumber(int)...";
    intResult =  doubleNumber(intValue);
    cout << "\nThe double of " << intValue << " = " << intResult << "\n";

    cout << "\nEnter a fractioned value + <Enter>: ";
    cin >> floatValue;

    cout << "\nCalling a float doubleNumber(float)...";
    floatResult = doubleNumber(floatValue);
    cout << "\nThe double of " << floatValue << " = " << floatResult << "\n";

    return 0;
}

int doubleNumber(int intValue) {

    return 2 * intValue;
}

float doubleNumber(float floatValue) {

    return 2 * floatValue;
}


#include <iostream>

using namespace std;

int doubleValue(int valueForParameter);

int main()
{
    int resultNumber = 0;
    int initialValue;

    cout << "\nEnter a num 0 to 5000 + <Enter>: ";
    cin >> initialValue;

    cout << "We are in main(), before to call doubleValue()\n";
    cout << "Initial value = " << initialValue << "\n";
    cout << "Result = " << resultNumber << "\n";

    resultNumber = doubleValue(initialValue);

    cout << "We are in main(), before the doubleValue()\n";
    cout << "Initial Value = " << initialValue << "\n";
    cout << "Result = " << resultNumber << "\n";

    return 0;
}

int doubleValue(int valueForParameter) {

    if(valueForParameter <= 5000) {
        return valueForParameter * 2;
    } else {
        cout << "Invalid value.\n";
        return -1;
    }

    cout << "This code will be not executed.\n";
}

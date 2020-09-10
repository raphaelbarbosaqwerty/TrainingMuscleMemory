#include <iostream>

using namespace std;

int main()
{
    int variableOne, variableTwo, variableThree;

    cout << "Enter a num. + <Enter>: ";
    cin >> variableOne;

    cout << "Enter a num. + <Enter>: ";
    cin >> variableTwo;

    if(variableOne == variableTwo) {
        cout << "The numbers are equal. Try again!\n";
    } else {
        variableThree = (variableOne > variableTwo) ? variableOne : variableThree;

        cout << "\n*** Final values ***\n";
        cout << "variableOne = " << variableOne << "\n";
        cout << "variableTwo = " << variableTwo << "\n";
        cout << "variableThree = " << variableThree << "\n";
    }

    return 0;
}

#include <iostream>

using namespace std;

int main()
{
    int variableOne;
    cout << "\nEnter a positive number and smaller than 10: ";
    cin >> variableOne;

    if((variableOne > 0) && (variableOne < 10)) {
        cout << "\nYou entered the correct number...";
    }

    cout << "\nEnter negative number or bigger than 1000: \n";
    cin >> variableOne;

    if((variableOne < 0) || (variableOne > 1000)) {
        cout << "\nYou are correct again!...\n";
    }

    return 0;

}

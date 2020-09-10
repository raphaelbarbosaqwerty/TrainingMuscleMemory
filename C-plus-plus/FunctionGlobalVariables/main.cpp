#include <iostream>

using namespace std;

void OneFunction();

int globalVariableOne = 10, globalVariableTwo = 20;

int main()
{
    cout << "\nWe are in main().\n";
    cout << "globalVariableOne = " << globalVariableOne << "\n";
    cout << "globalVariableTwo = " << globalVariableTwo << "\n";

    OneFunction();
    cout << "\nBack to main().\n";
    cout << "globalVariableOne = " << globalVariableOne << "\n";
    cout << "globalVariableTwo = " << globalVariableTwo << "\n";

    return 0;
}

void OneFunction() {
    int globalVariableOne = 30, globalVariableTwo = 40;
    cout << "\nWe are in OneFuncion().\n";
    cout << "globalVariableOne (local) = " << globalVariableOne << "\n";
    cout << "globalVariableTwo (local) = " << globalVariableTwo << "\n";
}

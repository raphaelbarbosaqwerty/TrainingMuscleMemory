#include <iostream>

using namespace std;

void oneFunction();

int globalVariableOne = 20;

int main()
{
    int variableOne = 10, globalVariableOne = 40;

    cout << "\nWe are in main().\n";
    cout << "globalVariableOne (local) = " << globalVariableOne << "\n";
    cout << "variableOne = " << variableOne << "\n";

    oneFunction();
    cout << "\nBack to main()\n";
    cout << "globalVariableOne (local) = " << globalVariableOne << "\n";
    cout << "variableOne = " << variableOne << "\n";

    return 0;
}

void oneFunction() {

    int variableOne = 20, globalVariableOne = 80;
    cout << "\nWe are in oneFunction()\n";
    cout << "globalVariableOne (local) = " << globalVariableOne << "\n";
    cout << "variableOne = " << variableOne << "\n";

    {
        int variableOne = 30, globalVariableOne = 160;
        cout << "\nWe are in a Block of code.\n";
        cout << "globalVariableOne (local) = " << globalVariableOne << "\n";
        cout << "variableOne = " << variableOne << "\n";
    }

    cout << "\nWe are in a oneFunction(), out of code block.\n";
    cout << "globalVariableOne (local) = " << globalVariableOne << "\n";
    cout << "variableOne = " << variableOne << "\n";
}

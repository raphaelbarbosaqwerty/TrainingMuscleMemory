#include <iostream>

using namespace std;

void tradeNumbers(int, int);
void multiplicationNumbers(int, int);

int main()
{
    int variableOne = 10, variableTwo = 20;

    cout << "We are in main(), before the tradeNumbers()\n";
    cout << "variableOne = " << variableOne << "\n";
    cout << "variableTwo = " << variableTwo << "\n";

    tradeNumbers(variableOne, variableTwo);

    cout << "We are in main(), after the tradeNumbers()\n";
    cout << "variableOne = " << variableOne << "\n";
    cout << "variableTwo = " << variableTwo << "\n";

    multiplicationNumbers(variableOne, variableTwo);

    cout << "We are in main(), after the multiplicationNumbers()\n";
    cout << "variableOne = " << variableOne << "\n";
    cout << "variableTwo = " << variableTwo << "\n";

    return 0;
}

void tradeNumbers(int variableOne, int variableTwo) {

    cout << "We are in tradeNumbers(), before tradeNumbers\n";
    cout << "variableOne = " << variableOne << "\n";
    cout << "variableTwo = " << variableTwo << "\n";

    int tempVariable;

    tempVariable = variableOne;
    variableOne = variableTwo;
    variableTwo = tempVariable;

    cout << "We are in tradeNumbers(), after the tradeNumbers\n";
    cout << "variableOne = " << variableOne << "\n";
    cout << "variableTwo = " << variableTwo << "\n";

}

void multiplicationNumbers(int variableOne, int variableTwo) {

    cout << "We are in multiplicationNumbers(), before multiplicationNumbers\n";
    cout << "variableOne = " << variableOne << "\n";
    cout << "variableTwo = " << variableTwo << "\n";

    int multiplicationVariableOne, multiplicationVariableTwo;

    multiplicationVariableOne = variableOne * 10;
    multiplicationVariableTwo = variableTwo * 10;

    cout << "We are in multiplicationNumbers(), after the multiplicationNumbers\n";
    cout << "variableOne = " << multiplicationVariableOne << "\n";
    cout << "variableTwo = " << multiplicationVariableTwo << "\n";

}

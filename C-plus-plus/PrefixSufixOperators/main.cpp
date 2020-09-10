#include <iostream>

using namespace std;

int main()
{
    int variableOne = 10, variableTwo = 10;

    cout << "\n*** Initial values ***\n";
    cout << "variableOne = " << variableOne << ", variableTwo = " << variableOne << "\n";

    variableOne++;
    ++variableTwo;

    cout << "\n*** After operators ***\n";
    cout << "variableOne = " << variableOne << ", variableTwo = " << variableOne << "\n";

    cout << "\n*** Using operators Prefix and Sufix ***\n";
    cout << "variableOne = " << variableOne++ << ", variableTwo = " << ++variableTwo << "\n";

    return 0;
}

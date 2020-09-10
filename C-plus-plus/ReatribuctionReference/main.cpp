#include <iostream>

using namespace std;

int main()
{
    int integerVariableOne = 555, integerVariableTwo = 777;
    int &integerReferenceOne = integerVariableOne;

    cout << "\n*** Initial Values ***";
    cout << "\nintegerVariableOne: Value = " << integerVariableOne << "\tAddress = " << &integerVariableOne << "\n";
    cout << "\integerReferenceOne: Value = " << integerReferenceOne << "\tAddress = " << &integerReferenceOne << "\n";

    integerReferenceOne = integerVariableTwo;

    cout << "\n*** New values ***";
    cout << "\nintegerVariableTwo: Value = " << integerVariableTwo << "\tAddress = " << &integerVariableTwo << "\n";
    cout << "\integerReferenceOne: Value = " << integerReferenceOne << "\tAddress = " << &integerReferenceOne << "\n";

    return 0;

}

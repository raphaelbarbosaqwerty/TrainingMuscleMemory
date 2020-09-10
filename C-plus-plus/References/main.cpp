#include <iostream>

using namespace std;

int main()
{
    int integerVariable;
    int &integerReference = integerVariable;

    integerVariable = 777;

    cout << "\n*** Initial values ***";
    cout << "\nintegerVariable = " << integerVariable;
    cout << "\nintegerReferece = " << integerReference << "\n";

    integerReference = 379;

    cout << "\n*** New values ***";
    cout << "\nintegerVariable = " << integerVariable;
    cout << "\nintegerReferece = " << integerReference << "\n";

    return 0;
}

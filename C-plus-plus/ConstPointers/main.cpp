#include <iostream>

using namespace std;

int main()
{
    int integerVariableOne = 10, integerVariableTwo;

    int* const pointerConst = &integerVariableOne;

    cout << "\n*** Initial values ***\n";
    cout << "\nAddress = " << pointerConst;
    cout << "\nintegerVariableOne = " << *pointerConst;

    (*pointerConst) += 5;

    cout << "\n*** New values ***\n";
    cout << "\nAddress = " << pointerConst;
    cout << "\nintegerVariableOne = " << *pointerConst << "\n";

    return 0;
}

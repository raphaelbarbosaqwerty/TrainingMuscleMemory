#include <iostream>

using namespace std;

int main()
{
    int integerVariableOne = 10;

    const int* pointerConst = &integerVariableOne;

    cout << "\n*** Initial value ***";
    cout << "\nintegerVariableOne = " << *pointerConst << "\n";

    integerVariableOne += 50;

    cout << "\n*** New value ***";
    cout << "\nintegerVariableOne = " << *pointerConst << "\n";

    return 0;
}

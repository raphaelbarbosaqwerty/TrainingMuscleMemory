#include <iostream>

using namespace std;

int main()
{
    int integerVariableOne = 10, integerVariableTwo;

    const int* const pointerConst = &integerVariableOne;

    cout << "\n*** Initial value ***\n";
    cout << "\nintegerVariableOne = " << *pointerConst << "\n";

    return 0;
}

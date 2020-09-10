#include <iostream>

using namespace std;

int main()
{
    int integerVariable = 1000;
    int *integerPointer = &integerVariable;

    int **integerPointerToPointer = &integerPointer;

    cout << "Accessing value with pointer\n";
    cout << "integerVariable = " << *integerPointer << "\n";

    cout << "Accessing value with pointer to pointer\n";
    cout << "integerVariable = " << **integerPointerToPointer << "\n";

    return 0;
}

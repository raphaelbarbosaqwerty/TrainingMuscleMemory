/*
This program have erros to show how works the Loose Pointers
The program will crash
*/

#include <iostream>

using namespace std;

int main()
{
    int *integerPointer;

    integerPointer = new int;

    if(integerPointer != 0) {
        *integerPointer = 200;

    }

    cout << "\n*integerPointer = " << *integerPointer << "\tAddress = " << integerPointer << "\n";

    delete integerPointer;

    *integerPointer = 300;

    cout << "\n*integerPointer = " << *integerPointer << "\tAddress = " << integerPointer << "\n";

    return 0;
}

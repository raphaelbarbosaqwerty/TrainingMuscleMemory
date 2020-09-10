#include <iostream>
#include <string.h>

using namespace std;

int main()
{
    char stringOne[] = "The mouse gnawed on the king's clothes";
    char stringTwo[15] = "Hello, World!";

    cout << "\nStringOne = " << stringOne;
    cout << "\nStringTwo = " << stringTwo;

    cout << "strncpy(). Copy the string for another location.\n";

    strncpy(stringTwo, stringOne, 16);

    cout << "\nStringOne = " << stringOne;
    cout << "\nStringTwo = " << stringTwo << "\n";

    return 0;
}

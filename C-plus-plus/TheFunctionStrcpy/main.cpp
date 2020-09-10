#include <iostream>
#include <string.h>

using namespace std;

int main()
{
    char stringOne[] = "The mouse gnawed on the king's clothes";
    char stringTwo[128] = "Hello, World!";

    cout << "\nStringOne = " << stringOne;
    cout << "\nStringTwo = " << stringTwo;

    cout << "strcpy(). Copy the string for another location.\n";

    strcpy(stringTwo, stringOne);

    cout << "\nStringOne = " << stringOne;
    cout << "\nStringTwo = " << stringTwo << "\n";

    return 0;
}

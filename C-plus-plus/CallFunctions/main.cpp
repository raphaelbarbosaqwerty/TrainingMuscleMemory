#include <iostream>

using namespace std;

void someFunction() {
    cout << "Now we are in a someFunction()...\n";
}

int main()
{
    cout << "Now we are in main()...\n";
    someFunction();
    cout << "..back to main().\n";

    return 0;
}

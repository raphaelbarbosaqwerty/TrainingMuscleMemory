#include <iostream>

using namespace std;

int main()
{
    cout << "How to Bursting Unsigned Variable\n";

    short int sVar;

    sVar = 32767;
    cout << "Initial Value = " << sVar << "\n";

    sVar = sVar + 1;
    cout << "Sum 1 = " << sVar << "\n";

    sVar = sVar + 1;
    cout << "Sum plus 1 = " << sVar << "\n";

    return 0;
}

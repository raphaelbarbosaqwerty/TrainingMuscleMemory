#include <iostream>

using namespace std;

int main()
{
    cout << "How to Bursting Unsigned Variable\n";

    unsigned short int usVar;
    usVar = 65535;
    cout << "Initial Value = " << usVar << "\n";
    usVar = usVar + 1;
    cout << "Sum 1 = " << usVar << "\n";
    return 0;
}

#include <iostream>

using namespace std;

int main()
{
    int a = 0, b = 0, c = 0, d = 20;

    cout << "*** Initial Values ***\n";
    cout << "a = " << a << ", b = " << b << ", c = " << c << ", d = " << d << "\n";

    cout << "\nNew value for A: ";
    cin >> a;

    cout << "New value for B: ";
    cin >> b;

    c = d = a + b;

    cout << "\n*** New values *** \n";
    cout << "a = " << a << ", b = " << b << ", c = " << c << ", d = " << d << "\n";

    return 0;
}

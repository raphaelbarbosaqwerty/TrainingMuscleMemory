#include <iostream>

using namespace std;

int main()
{
    unsigned short unsignedShortVariable = 200;
    unsigned long unsigenedLongVariable = 300;

    long longVariable = 400;

    cout << "\n*** Values and address ***\n";

    cout << "\nunsignedShortVariable: Value = " << unsignedShortVariable << ", Address = " << &unsignedShortVariable << "\n";
    cout << "\nunsignedLongVariable: Value = " << unsigenedLongVariable << ", Address = " << &unsigenedLongVariable << "\n";
    cout << "\nlongVariable: Value = " << longVariable << ", Address = " << &longVariable << "\n";
}

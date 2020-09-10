#include <iostream>

using namespace std;

int main()
{
    unsigned short unsignedShortVariable = 200;
    unsigned long unsignedLongVariable = 300;
    long longVariable = 400;

    unsigned short* unsignedShortPointer = &unsignedShortVariable;
    unsigned long* unsignedLongPointer = &unsignedLongVariable;
    long* longPointer = &longVariable;

    cout << "\n*** Initial values ***\n";
    cout << "\nunsignedShortVariable: Value = " << unsignedShortVariable << ", Address = " << unsignedShortPointer;
    cout << "\nunsignedLongVariable: Value = " << unsignedLongVariable << ", Address = " << unsignedLongPointer;
    cout << "\nlongPointer: Value = " << longVariable << ", Address = " << longPointer;

    *unsignedShortPointer = 210;
    *unsignedLongPointer = 310;
    *longPointer = 410;

    cout << "\n*** New values ***\n";
    cout << "\nunsignedShortVariable: Value = " << unsignedShortVariable << ", Address = " << unsignedShortPointer << "\n";
    cout << "\nunsignedLongVariable: Value = " << unsignedLongVariable << ", Address = " << unsignedLongPointer << "\n";
    cout << "\nlongPointer: Value = " << longVariable << ", Address = " << longPointer << "\n";

    return 0;

}

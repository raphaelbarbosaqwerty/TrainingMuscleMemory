#include <iostream>

using namespace std;

typedef unsigned long USHORT;

int main()
{
    USHORT width = 7, length;

    length = 8;

    USHORT area = width * length;

    cout << "*** Final values ***\n";
    cout << "Width = " << width << "\n";
    cout << "Length = " << length << "\n";
    cout << "Area = " << area << "\n";

    return 0;
}

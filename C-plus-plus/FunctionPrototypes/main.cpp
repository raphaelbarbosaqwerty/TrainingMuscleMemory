#include <iostream>

using namespace std;

int CalcArea(int length, int width);

int main()
{
    int len, wid, area;

    cout << "*** Area calculation of a triangle ***\n";
    cout << "Enter the length (meters) + <Enter>: ";
    cin >> len;

    cout << "\nEnter the width (meters) + <Enter>: ";
    cin >> wid;

    area = CalcArea(len, wid);
    cout << "\nArea = " << area << " square meters.\n";

    return 0;
}

int CalcArea(int length, int width) {
    return length * width;
}

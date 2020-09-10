#include <iostream>

using namespace std;

int volumeOfObject(int length, int width = 10, int depth = 12);

int main()
{
    int len, wid, dep;
    int objectVolume;

    cout << "\nEnter length: ";
    cin >> len;

    objectVolume = volumeOfObject(len);
    cout << "Volume of object = " << objectVolume << "\n";

    cout << "\nEnter width: ";
    cin >> wid;

    objectVolume = volumeOfObject(len, wid);

    cout << "Volume of object = " << objectVolume << "\n";

    cout << "\nEnter length: ";
    cin >> len;

    cout << "\nEnter width: ";
    cin >> wid;

    cout << "\nEnter depth: ";
    cin >> dep;

    objectVolume = volumeOfObject(len, wid, dep);

    cout << "Volume of object = " << objectVolume << "\n";

    return 0;
}

volumeOfObject(int length, int width, int depth) {
    return length * width * depth;
}

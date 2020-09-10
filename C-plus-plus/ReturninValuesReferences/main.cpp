#include <iostream>

using namespace std;

bool cubeSquare(long, long&, long&);

int main()
{
    long cubeNumber, square, cube;
    bool success;

    cout << "\nEnter a num. (less than 1000): ";
    cin >> cubeNumber;

    success = cubeSquare(cubeNumber, square, cube);

    if(success) {
        cout << "\nNumber = " << cubeNumber;
        cout << "\nSquare = " << square;
        cout << "\nCube = " << cube;
    } else {
        cout << "\nError!\n";
    }

    return 0;
}

bool cubeSquare(long value, long& squareReference, long& pointerReference) {

    bool functionSuccess = true;

    if(value >= 1000) {
        functionSuccess = false;
    } else {
        squareReference = value * value;
        pointerReference = value * value * value;
    }

    return functionSuccess;
}

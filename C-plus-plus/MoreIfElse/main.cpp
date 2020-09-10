#include <iostream>

using namespace std;

int main()
{
    int numBigger, numSmaller;

    cout << "Type numBigger + <Enter>: ";
    cin >> numBigger;
    cout << "Type numSmaller + <Enter>: ";
    cin >> numSmaller;

    if(numBigger >= numSmaller) {
        if((numBigger % numSmaller) == 0) {
            if(numBigger == numSmaller) {
                cout << "numBigger is equal a numSmaller.\n";
            } else {
                cout << "numBigger is multiple to numSmaller\n";
            }
        } else {
            cout << "The division is not an exact.\n";
        }
    } else {
        cout << "Error!! numSmaller is Bigger than numBigger!\n";
    }

    return 0;
}

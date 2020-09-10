#include <iostream>

using namespace std;

int main()
{
    int numBigger, numSmaller;

    cout << "Type numBigger + <Enter>: ";
    cin >> numBigger;
    cout << "Type numSmaller + <Enter>: ";
    cin >> numSmaller;

    if(numBigger > numSmaller) {
        cout << "\nOk. numBigger is bigger than numSmaller\n";
    } else {
        cout << "\nError!!! numBigger is smaller than numSmaller\n";
    }

    if(numBigger != numSmaller) {
        cout << "\nNumbers are different!\n";
    } else if(numBigger == numSmaller){
        cout << "\nNumbers are equal\n";
    }

    return 0;
}

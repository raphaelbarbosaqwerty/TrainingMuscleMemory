#include <iostream>

using namespace std;

int main()
{
    int arrayTwoDimensions[4][3] = { {2, 4, 6}, {8, 10, 12}, {14, 16, 18}, {20, 22, 24}};
    for(int indexOfArray = 0; indexOfArray < 4; indexOfArray++) {

        for(int indexOfAnotherPosition = 0; indexOfAnotherPosition < 3; indexOfAnotherPosition++) {
            cout << arrayTwoDimensions[indexOfArray][indexOfAnotherPosition] << "\t";
        }
        cout << "\n";
    }

    return 0;
}

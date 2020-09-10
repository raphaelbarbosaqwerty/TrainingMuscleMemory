#include <iostream>

using namespace std;

int main()
{
    int initialNumber, limitNumber, searchNumber, jumpNumber;

    cout << "\nEnter the initial number: ";
    cin >> initialNumber;

    cout << "\nEnter the limit number: ";
    cin >> limitNumber;

    cout << "\nEnter the search number: ";
    cin >> searchNumber;

    cout << "\nEnter the jump number: ";
    cin >> jumpNumber;

    while(initialNumber < limitNumber) {

        initialNumber++;

        if(initialNumber % jumpNumber == 0) {

            cout << "\nJumping " << initialNumber << "...";
            continue;
        }

        cout << "\nSearching... initial number = " << initialNumber << "...";

        if(initialNumber == searchNumber) {

            cout << "\nFound! initialNumber = " << initialNumber;
            break;
        }
    }

    if(initialNumber != searchNumber) {
        cout << "\n\nThe num. " << searchNumber << " was jumped.\n";

    }

    return 0;
}

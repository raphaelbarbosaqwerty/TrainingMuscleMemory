#include <iostream>

using namespace std;

int main()
{
    cout << "\nEnter a num. Smaller than 5 or bigger than 10: ";
    int num;
    cin >> num;

    if(num <= 5) {
        cout << "\nNumber smaller than 5.\n";
    } else if(num > 10) {
        cout << "\nNumber bigger than 10.\n";
    } else {
        cout << "\nNumber\n";
    }

    return 0;
}

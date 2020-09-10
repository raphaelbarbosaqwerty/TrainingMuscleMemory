#include <iostream>

using namespace std;

int main()
{
    cout << "\n1 - Green";
    cout << "\n2 - Blue";
    cout << "\n3 - Yellow";
    cout << "\n4 - Red";
    cout << "\n5 - Orange";
    cout << "\n\nChoose a color: ";

    int numberColor;
    cin >> numberColor;

    switch(numberColor)
    {
        case 1:
            cout << "\nYou choose Green.";
            break;
        case 2:
            cout << "\nYou choose Blue.";
            break;
        case 3:
            cout << "\nYou choose Yellow.";
            break;
        case 4:
            cout << "\nYou choose Red.";
            break;
        case 5:
            cout << "\nYou choose Orange.";
            break;
        default:
            cout << "\nYou choose a unknow color";
            break;
    }

    return 0;
}

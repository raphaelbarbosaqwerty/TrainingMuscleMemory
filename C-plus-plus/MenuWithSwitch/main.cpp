#include <iostream>
#include <conio.h>

using namespace std;

int main()
{
    int optionNumber;

    do {
        cout << "\n0 - Exit";
        cout << "\n1 - Green";
        cout << "\n2 - Blue";
        cout << "\n3 - Yellow";
        cout << "\n4 - Red";
        cout << "\n5 - Orange";
        cout << "\n6 - Beige";
        cout << "\n7 - Grena";
        cout << "\n8 - Purple";
        cout << "\n\nChoose a color or 0 to exit: ";
        cin >> optionNumber;

        switch(optionNumber)
        {
            case 1:
                cout << "\nYou choose Green.\n";
                break;
            case 2:
                cout << "\nYou choose Blue.\n";
                break;
            case 3:
                cout << "\nYou choose Yellow.\n";
                break;
            case 4:
                cout << "\nYou choose Red.\n";
                break;
            case 5:
                cout << "\nYou choose Orange.\n";
                break;
            case 6:
                cout << "\nYou choose Beige.\n";
                break;
            case 7:
                cout << "\nYou choose Grena.\n";
                break;
            case 8:
                cout << "\nYou choose Purple.\n";
                break;
            default:
                cout << "\nYou choose a unknow color.\n";
                break;
        }
    } while(optionNumber != 0);

    return 0;

}

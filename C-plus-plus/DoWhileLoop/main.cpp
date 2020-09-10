#include <iostream>

using namespace std;

int main()
{
    int numberForDo;

    cout << "\nEnter one num 1 and 10: ";
    cin >> numberForDo;

    while(numberForDo > 6 && numberForDo < 10) {

        cout << "\nThis message can be or not showed!";
        numberForDo++;
    }

    do {
        cout << "\nThis message can be showed! One time...\n";
        numberForDo++;
    } while(numberForDo > 6 && numberForDo < 10);

    return 0;
}

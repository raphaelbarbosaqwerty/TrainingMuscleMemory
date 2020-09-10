#include <iostream>

using namespace std;

int main()
{
    int counterForGoto = 0;

    label1:
        counterForGoto++;

    cout << "\nCounter = " << counterForGoto;

    if(counterForGoto < 10) {
        goto label1;
    }

    cout << "\n\nFinal value: counter= " << counterForGoto;

    return 0;
}

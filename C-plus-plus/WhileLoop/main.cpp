#include <iostream>

using namespace std;

int main()
{
    int counterForWhile = 0;

    while(counterForWhile < 10) {
        counterForWhile++;

        cout << "\nCounter = " << counterForWhile;
    }

    cout << "\n\nFinal Value: Counter = " << counterForWhile << "\n";

    return 0;
}

#include <iostream>

using namespace std;

int main()
{
    int counterFor = 0;

    cout << "\n*** Using While ***";

    while(counterFor < 10) {
        counterFor++;
        cout << "\nCounter = " << counterFor;
    }

    cout << "\n\n*** Using For ***";

    for(counterFor = 10; counterFor <= 1; counterFor--) {
        cout << "\nCounter = " << counterFor;
    }

    return 0;
}

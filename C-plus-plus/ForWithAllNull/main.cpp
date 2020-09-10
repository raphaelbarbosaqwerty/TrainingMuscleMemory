#include <iostream>

using namespace std;

int main()
{
    int counterFor = 1;

    cout << "\nCounting in " << counterFor << " to 10...\n\n";

    for( ; ; ) {

        if(counterFor <= 10) {
            cout << counterFor << " ";
            counterFor++;
        }

        else {
            cout << "\n";
            break;
        }
    }

    return 0;
}

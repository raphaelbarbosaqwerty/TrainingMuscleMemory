#include <iostream>

using namespace std;

int main()
{
    int counterForInfiniteLoop = 0;

    while(true) {

        cout << "\nCounter = " << counterForInfiniteLoop++;

        if(counterForInfiniteLoop > 100) {
            break;
        }
    }

    return 0;
}

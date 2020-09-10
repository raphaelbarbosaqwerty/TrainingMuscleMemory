#include <iostream>

using namespace std;

int main()
{
    cout << "\n\n*** Using double for ***";

    for(int toUp = 1, toDown = 10; toUp <= 10/*, toDown >= 1*/; toUp++, toDown--) {
        cout << "\ntoUp = " <<  toUp << "\ttoDown = " << toDown;
    }
}

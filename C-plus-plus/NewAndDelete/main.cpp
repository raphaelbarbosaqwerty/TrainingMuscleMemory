#include <iostream>

using namespace std;

int main()
{
    int localVariable = 200;

    int* pointerLocalVariable =  &localVariable;
    int* pointerHeap;

    pointerHeap = new int;

    if(!pointerHeap) {

        cout << "\nError allocating memory!!! Ending...\n";

        return 0;
    }

    *pointerHeap = 300;
    *pointerHeap *= 2;

    cout << "\n*** Values ***\n";
    cout << "\nlocalVariable:\tValue = " << localVariable << "\tAddress = " << pointerLocalVariable;
    cout << "\nDynamics variable:\tValue = " << *pointerHeap << "\tAddress = " << pointerHeap;
    cout << "\n";

    delete pointerHeap;

    return 0;
}

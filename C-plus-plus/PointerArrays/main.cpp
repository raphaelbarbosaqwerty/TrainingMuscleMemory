#include <iostream>

using namespace std;

int main()
{
    double* arrayPointersDouble[50];

    for(int indexOfArray = 0; indexOfArray < 50; indexOfArray++)
    {
        arrayPointersDouble[indexOfArray] = new double;

        if(arrayPointersDouble[indexOfArray])
        {
            *(arrayPointersDouble[indexOfArray]) = 1000 * indexOfArray;
        }
    }

    for (int newIndexOfArray = 0; newIndexOfArray < 50; newIndexOfArray++)
    {
        cout << "\n*(arrayPointersDouble[" << newIndexOfArray << "]) = " << *arrayPointersDouble[newIndexOfArray];
    }

    cout << "\nDelete array...";

    for(int anotherIndexOfArray = 0; anotherIndexOfArray < 50; anotherIndexOfArray++)
    {
        if(arrayPointersDouble[anotherIndexOfArray])
        {
            delete arrayPointersDouble[anotherIndexOfArray];
            arrayPointersDouble[anotherIndexOfArray] = 0;
        }
    }

    return 0;
}

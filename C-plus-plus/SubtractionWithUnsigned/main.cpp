#include <iostream>

using namespace std;

int main()
{
    unsigned int diference;
    unsigned int numBigger = 1000;
    unsigned int numSmaller = 1000;

    cout << "\nnumBigger = " << numBigger << ", numSmaller = " << numSmaller << "\n";

    diference = numBigger - numSmaller;

    cout << "\nnumBigger - numSmaller = " << diference << "\n";

    diference = numSmaller - numBigger;

    cout << "\numSmaller - nnumBigger = " << diference << "\n";

    return 0;


}

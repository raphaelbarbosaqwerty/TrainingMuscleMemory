#include <iostream>

using namespace std;

long forFibo(long position);

int main()
{
    long resultFibo, positionFibo;

    cout << "\nEnter a position in serie: ";
    cin >> positionFibo;

    resultFibo = forFibo(positionFibo);

    cout << "\nPosition = " << positionFibo << ", Num. Fibonacci = " << resultFibo;

    return 0;
}

long forFibo(long position) {

    long twoLess, oneLess  = 1, result = 2;

    if(position < 3) {
        return 1;
    }

    for(position -= 3; position; position--) {
            twoLess = oneLess;
            oneLess = result;
            result = oneLess + twoLess;
    }

    return result;
}

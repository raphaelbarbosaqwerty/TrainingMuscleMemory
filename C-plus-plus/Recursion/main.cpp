#include <iostream>

using namespace std;

int fiboNumbers(int valueHere);

int main()
{
    int valueNumber, fibonacciValue;

    cout << "Enter a number: + <Enter>: ";
    cin >> valueNumber;

    fibonacciValue = fiboNumbers(valueNumber);

    cout << "\nElement " << valueNumber << " in the Fibonacci = " << fibonacciValue;

    return 0;
}

int fiboNumbers(int valueHere) {

    cout << "\nProcessing fibo(" << valueHere << ")...";

    if (valueHere < 3) {
        cout << "Returning 1...\n";
        return 1;
    } else {
        cout << "Calling fiboNumbers(" << valueHere - 2 << ") and fiboNumbers(" << valueHere << ").\n";
        return (fiboNumbers(valueHere - 2) + fiboNumbers(valueHere - 1));
    }
}

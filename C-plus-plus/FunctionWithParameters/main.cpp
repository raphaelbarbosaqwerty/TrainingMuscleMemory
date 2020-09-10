#include <iostream>

using namespace std;

int SumNumbers(int firstNumber, int secondNumber) {
    cout << "We are in a function Sum().\n";
    cout << "Values: \n";
    cout << "firstNumber = " << firstNumber << ", secondNumber = " << secondNumber << "\n";

    return (firstNumber + secondNumber);
}

int MultiplicNumbers(int firstNumber, int secondNumber)
{

    return (firstNumber * secondNumber);
}

int main()
{
    cout << "Now we are in main()...\n";

    int x, y, z, multi;

    cout << "\nType it the first num. + <Enter>";

    cin >> x;

    cout << "\nType it the second num. + <Enter>";

    cin >> y;

    cout << "\nType it the third num. + <Enter>";

    z = SumNumbers(x, y);
    multi = MultiplicNumbers(x, y);

    cout << "We return to main()\n";
    cout << "New value of z = " << z << "\n";
    cout << "Value of multi = " << multi << "\n";

    return 0;
}

#include <iostream>

using namespace std;

double FahrToCent(double);

int main()
{
    double tempFahr, tempCent;

    cout << "\n*** Degrees Fahrenheit conversion to centigrade ***\n";
    cout << "Enter a Fahrenheit temp: ";
    cin >> tempFahr;

    tempCent = FahrToCent(tempFahr);

    cout << "\n" << tempFahr << " Fahrenheit = " << tempCent << " degree centigrade.\n";

    return 0;
}

double FahrToCent(double fahr) {
    double cent;
    cent = ((fahr - 32) * 5) / 9;
    return cent;
}

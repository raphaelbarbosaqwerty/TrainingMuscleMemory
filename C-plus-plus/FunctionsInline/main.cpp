#include <iostream>

using namespace std;

inline int multiplicationByTen(int);
inline void showValue(int);

int main()
{
    int numberForMultiplication;
    cout << "\nEnter a number + <Enter>: ";
    cin >> numberForMultiplication;

    numberForMultiplication = multiplicationByTen(numberForMultiplication);

    return 0;
}

int multiplicationByTen(int numberParameter) {
    int newValue;
    newValue = numberParameter * 10;
    showValue(newValue);

}

void showValue(int newValue) {
    cout << "\nNew value = " << newValue << "\n";
}

#include <iostream>
#include <string.h>

using namespace std;

struct employee
{
    int employeeIdentification;
    char employeeName[32];
    int monthsNumber;
    float salaryHour;
};

void showStruct(struct employee *employPointer);

int main()
{
    struct employee raphael =
    {
        777,
        "Raphael",
        36,
        3.50
    };

    showStruct(&raphael);

    return 0;
}

void showStruct(struct employee *employPointer)
{
    cout << "Identification: " << employPointer->employeeIdentification << "\n";
    cout << "Name: " << employPointer->employeeName << "\n";
    cout << "Months job: " << employPointer->monthsNumber << "\n";
    cout << "Salary per hour: " << employPointer->salaryHour << "\n";

}

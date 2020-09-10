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

void showStruct(employee& referenceEmploy);

int main()
{

    struct employee raphael =
    {
        777,
        "Raphael",
        36,
        3.50
    };

    employee& referenceEmploye = raphael;

    showStruct(referenceEmploye);

    return 0;
}

void showStruct(employee& referenceEmploy)
{
    cout << "Identification: " << referenceEmploy.employeeIdentification << "\n";
    cout << "Name: " << referenceEmploy.employeeName << "\n";
    cout << "Months job: " << referenceEmploy.monthsNumber << "\n";
    cout << "Salary per hour: " << referenceEmploy.salaryHour << "\n";

}

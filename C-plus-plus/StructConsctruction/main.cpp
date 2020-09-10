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

void showStruct(struct employee employ);

int main()
{
    struct employee raphael;
    raphael.employeeIdentification = 777;
    strcpy(raphael.employeeName, "Raphael");
    raphael.monthsNumber = 36;
    raphael.salaryHour = 3.50;

    showStruct(raphael);

    return 0;
}

void showStruct(struct employee employ)
{
    cout << "Identification: " << employ.employeeIdentification << "\n";
    cout << "Name: " << employ.employeeName << "\n";
    cout << "Months job: " << employ.monthsNumber << "\n";
    cout << "Salary per hour: " << employ.salaryHour << "\n";

}

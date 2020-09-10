#include <iostream>

using namespace std;

const float PI = 3.1416;
const float KM_PER_SECOND = 300.00;
const float SECONDS_PER_MINUTE = 60;
const float HOURS_PER_DAY = 24;
const float DAYS_BY_YEAR = 365.245;

int main()
{
    float yearsLight = KM_PER_SECOND * SECONDS_PER_MINUTE * HOURS_PER_DAY * DAYS_BY_YEAR;

    cout << yearsLight << "\n";
    cout << "Circle area " << "radius 5 = " << PI * 5 * 5 << "\n";

    return 0;
}

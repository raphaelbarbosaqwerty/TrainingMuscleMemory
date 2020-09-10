#include <iostream>

using namespace std;

#define PI 3.1416
#define KM_PER_SECOND 300.00
#define SECONDS_PER_MINUTE 60
#define MINUTES_PER_HOUR 60
#define HOUR_PER_DAY 24
#define DAYS_PER_YEAR 365

int main()
{
    float yearLight;

    cout << "Area from circle " << "radius 5 = " << PI * 5 * 5 << "\n";

    yearLight = KM_PER_SECOND * SECONDS_PER_MINUTE * MINUTES_PER_HOUR * HOUR_PER_DAY * DAYS_PER_YEAR;

    cout << yearLight << "\n";

    return 0;

}

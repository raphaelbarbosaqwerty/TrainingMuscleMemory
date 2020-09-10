#include <iostream>

using namespace std;

int main()
{
    cout << "Define enumeration\n";

    enum DaysOfWeek
    {
        Sunday,
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday
    };

    DaysOfWeek days;

    int i;

    cout << "Type a num. (0 to 6) + <Enter>: \n";
    cin >> i;
    days = DaysOfWeek(i);

    if((days == Saturday) || (days == Monday)) {
        cout << "You choose Holidays.\n";
    } else {
        cout << "You choose a Normal day.\n";
    }

    return 0;

}

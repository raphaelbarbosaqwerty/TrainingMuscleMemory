#include <iostream>

using namespace std;

int main()
{
    cout << "Constant Enum Exercise" << endl;

    enum TimeOfDay
    {
        OneHour = 1,
        TwoHour = 2,
        ThreeHour = 3,
        FourHour = 4,
        FiveHour = 5,
        SixHour = 6,
        SevenHour = 7,
        EightHour = 8,
        NineHour = 9,
        TenHour = 10,
        ElevenHour = 11,
        TwelveHour = 12
    };

    TimeOfDay time;

    int chooseHour;

    cout << "Choose some hour, enter hour: ";
    cin >> chooseHour;
    chooseHour = TimeOfDay(chooseHour);

    return 0;

}

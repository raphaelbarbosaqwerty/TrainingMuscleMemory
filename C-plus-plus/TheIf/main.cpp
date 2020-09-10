#include <iostream>

using namespace std;

int main()
{
    int golsBrasil, golsNetherlands;

    cout << "\n*** Scoreboard Brasil X Netherlands ***\n";
    cout << "Enter the gols of Brasil: ";
    cin >> golsBrasil;
    cout << "\nEnter the gols of Netherlands: ";
    cin >> golsNetherlands;

    if(golsBrasil > golsNetherlands) {
        cout << "\nBrasil wins\n";
    }

    if(golsNetherlands > golsBrasil) {
        cout << "\nNetherlands wins\n";
    }

    return 0;
}

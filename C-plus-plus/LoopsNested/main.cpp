#include <iostream>

using namespace std;

int main()
{
    int lines = 10, columns = 12;

    for(int thisFor = 0; thisFor < lines; thisFor++) {

        for(int insideThisFor = 0; insideThisFor < columns; insideThisFor++) {
            cout << "* ";

        }
        cout << "\n";
    }

    return 0;
}

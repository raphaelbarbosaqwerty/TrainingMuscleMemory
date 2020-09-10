#include <iostream>

using namespace std;

int main()
{
    string name = "Raphael QWRTY";

    cout << "My name = " << name << "\n";

    string nickName;

    nickName = name.substr(8, 5);

    cout << "Nick name = " << nickName << "\n";
}

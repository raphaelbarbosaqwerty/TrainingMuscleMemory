#include <iostream>

using namespace std;

int main()
{
    string name = "Raphael QWRTY";

    cout << "My name = " << name << "\n";

    string nickName;

    nickName = name.replace(8, 5, "NoOne");

    cout << "Nick name = " << nickName << "\n";
}

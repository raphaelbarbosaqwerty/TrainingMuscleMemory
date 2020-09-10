#include <iostream>

using namespace std;

void sayGoodBye() {
    cout << "\nGood Bye\n";
}

void sayHello() {
    cout << "\nHello World\n";
    sayGoodBye();
}

int main()
{
    cout << "Functions" << endl;
    sayHello();
    return 0;
}

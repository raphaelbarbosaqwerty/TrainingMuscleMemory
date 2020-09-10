#include <iostream>
#include <string.h>

using namespace std;

struct Client
{
    int numberClient;
    char nameClient[64];
    float balanceClient;
};

void changeBalance(Client cl, float newBalance);

void showClient(Client cl);

int main()
{
    Client clientOne =
    {
        301,
        "Ghost",
        999.99
    };

    cout << "***Before changeBalance() ***\n";
    showClient(clientOne);

    changeBalance(clientOne, 120.00);

    cout << "***After changeBalance() ***\n";
    showClient(clientOne);

    return 0;
}

void showClient(Client cl)
{
    cout << "Client Number" << cl.numberClient << "\n";
    cout << "Client Name:" << cl.nameClient << "\n";
    cout << "Balance: " << cl.balanceClient << "\n";
}

void changeBalance(Client cl, float newBalance)
{
    cl.balanceClient = newBalance;
}

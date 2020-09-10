#include <iostream>

using namespace std;

int main()
{
   int integerVariableOne = 1000, integerVariableTwo = 2000;

   int* integerPointer;

   integerPointer = &integerVariableOne;

   cout << "\nintegerVariableOne: Value = " << integerVariableOne << ", Address = " << integerPointer;

   integerPointer = &integerVariableTwo;

   cout << "\nintegerVariableOne: Value = " << integerVariableTwo << ", Address = " << integerPointer << "\n";

   return 0;

}

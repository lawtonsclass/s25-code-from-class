#include <iostream>
#include <fstream>
using namespace std;

int main() {
  ifstream ifs("1to10.txt");

  int sum = 0;
  int nextNum;
  while (ifs >> nextNum) { // the body only ever executes if the read was successful
    sum += nextNum;
  }

  ifs.close(); // I don't need ifs anymore!

  cout << sum << endl;

  return 0;
}

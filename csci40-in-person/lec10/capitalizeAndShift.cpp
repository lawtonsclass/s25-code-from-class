#include <iostream>
#include <cctype>
#include <cstring>
using namespace std;

int main(int argc, char* argv[]) {
  // iterate through all the args after the name of the program 
  for (int i = 1; i < argc; i++) {
    // mess with argv[i] 
    char* s = argv[i];

    // process every char of s
    for (int j = 0; j < strlen(s); j++) {
      // s[j] is my current char
      s[j] = toupper(s[j]);

      // if s[j] is a digit, shift it
      if (isdigit(s[j])) {
        if (s[j] == '9') {
          s[j] = '0';
        } else {
          s[j] = s[j] + 1;
        }
      }
    }

    cout << s << endl;
    
  }

  return 0;
}

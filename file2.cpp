#include <iostream>
#include <fstream>
using namespace std;

int main() {

string myText;//string is a collection of characters
//char myText[100];

// Read from the text file
ifstream MyReadFile("PUCCP.txt");//By default location, where we have saved the code

// Use a while loop together with the getline() function to read the file line by line
while (getline (MyReadFile, myText)) {
  // Output the text from the file
  cout << myText;
}

// Close the file
MyReadFile.close();
}

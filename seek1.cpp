#include <iostream>
#include <fstream>
using namespace std;

int main()
{
char filenm[50],ch;
int pos;
cout<<"Enter file name";
cin>>filenm;
ifstream f1("stud.dat");
f1.seekg(-1,ios::end);
pos=f1.tellg();
while(pos>=0)
{
    pos=pos-1;
    f1.read((char*)ch,sizeof(char));
    cout<<ch;
    f1.seekg(-2,ios::cur);
}
}

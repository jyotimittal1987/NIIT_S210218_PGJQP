// C++ program to demonstrate cin.get()

#include <iostream>
using namespace std;

int main()
{
	/*char name[25];
	cout<<"Enter name";*/
	//cin>>name;
	//cout<<"NAme is "<<name;
	//cin>>name;
	//cout<<name;
/*cin.get(name,25);
cout <<name;*/
char address[50];
cin.getline(address,10,'N');
cout<<address;
	return 0;
}

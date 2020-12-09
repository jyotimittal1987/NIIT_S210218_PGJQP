#include <iostream>
#include <fstream>
using namespace std;

class Student{
int Reg_no;
char name[50];
public: void setName()
{
    cout<<"enter name";
    cin>>name;
}
void setReg(){
cout<<"Enter Reg No";
cin>>Reg_no;
}
int getReg()
{
    return Reg_no;
}
char *getName()
{
    return name;
}
};
int main()
{
    ofstream f1("stud.dat");//write the content into file
    char ch;
    Student s1;
    s1.setReg();
    s1.setName();
    f1<<s1.getReg()<<s1.getName();//writing the content into file
    f1.close();
    cout<<"Do you want to read the content of file";
    cin>>ch;
    if(ch=='y')
    {
        ifstream f2("stud.dat");
        int regno;
        char name[60];
        f2>>regno>>name;
        cout<<regno<<"\t"<<name;
    }

}


#include<iostream>
using namespace std;
int main()
{
    try{
int a=10,b=0,c;
c=a/b;
cout<<c;
    }
    catch(char *msg)
    {
        cout<<msg;
    }


}

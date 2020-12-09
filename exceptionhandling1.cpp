#include<iostream>
using namespace std;
int main()
{
   int a,b,c;
   float  d;

   cout<<"Enter the value of a:";
   cin>>a;  //10
   cout<<"Enter the value of b:";
   cin>>b;//10
   cout<<"Enter the value of c:";
   cin>>c; //20

   try
   {
              if((a-b)!=0)
              {
                 d=c/(a-b);//20/8
                 cout<<"Result is:"<<d;
              }
              else
              {
                 throw(a-b);//0
              }
   }

   catch(int i)
   {
              cout<<"Answer is infinite because a-b is:"<<i;
   }
}

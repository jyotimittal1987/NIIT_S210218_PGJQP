import java.util.Scanner;
class Driver
{
public static void  main(String[] args)
{
int num;
double salary;
System.out.println("Enter a number");
Scanner sc=new Scanner(System.in);//Scanner is predefined class in java.util package
num=sc.nextInt();
salary=sc.nextDouble();
System.out.println(num + 1);
}
}

/* class Scanner
{
public int nextInt()
{
//code
}
public int nextDouble()
{
//code
}
}
int main()
{
Scanner sc;
sc.nextInt();
}  */
//WAP to check whether the entered no is positive,negative or 0.
import java.util.Scanner;
class DecisionEx
{
public static void main(String[] args)
{
int num;
System.out.println("Enter a number");
Scanner sc=new Scanner(System.in);
num=sc.nextInt();
if(num>0)
{
System.out.println("+ve");
}
else if(num<0)
{
System.out.println("-ve");
}
else
{
System.out.println("Zero");
}
}

}
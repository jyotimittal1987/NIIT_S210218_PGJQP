package StringsExample;

public class Equals {

	public static void main(String[] args) {
		String str4=new String("Hello");
		String str5=new String("hello");
		if(str4.equalsIgnoreCase(str5))
		{
			System.out.println("same string");
		}
		else
		{
			System.out.println("Different string");
		}
	}

}

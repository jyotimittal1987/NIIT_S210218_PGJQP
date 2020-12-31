package StringsExample;

public class StringBuilderEx {

	public static void main(String[] args) {
		StringBuffer b1=new StringBuffer();
		StringBuilder sb1=new StringBuilder();
		sb1.append("Hello");
		sb1.append("World");
		System.out.println(sb1);
		sb1.insert(2,'N');
		System.out.println(sb1);
		sb1.delete(2, 4);//2 included, 4 excluded
		System.out.println(sb1);
		System.out.println(sb1.reverse());
		

	}

}

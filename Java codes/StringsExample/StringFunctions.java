package StringsExample;

public class StringFunctions {
public static void main(String[] args) {
	String s1="Hello World";
	char ch=s1.charAt(3);
	System.out.println(ch);
	String s2="Java";
	System.out.println(s2.concat("Developers"));
	System.out.println(s1.contains("Hello"));
	System.out.println(s1.startsWith("llo"));
	System.out.println(s1.endsWith("ld"));
	System.out.println(s1.indexOf("l"));
	String s3="";
	System.out.println(s3.isEmpty());
	System.out.println(s1.length());
	System.out.println(s1.substring(2, 6));//include 2, exclude 6
	String s4="welcome";
	System.out.println(s4.toUpperCase());
	String s5="java";
	System.out.println(s2.compareTo(s5));  //0 ,Ascii code 
	
	
	
	
	
	
	
	
	
}
}

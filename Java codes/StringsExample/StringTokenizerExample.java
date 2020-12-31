package StringsExample;

import java.util.StringTokenizer;

public class StringTokenizerExample {

	public static void main(String[] args) {
		String str1="A,B,C,B";
		StringTokenizer st=new StringTokenizer(str1,",");
		while(st.hasMoreTokens())
		{
		System.out.println(st.nextToken());
		}
		System.out.println("------------------------");
		String str2[]=str1.split(",");
		for(String s:str2)
		{
			System.out.println(s);
		}
		

	}

}

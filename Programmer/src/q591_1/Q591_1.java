package q591_1;

import java.util.Scanner;

public class Q591_1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String a = sc.next();
		sc.close();

//        for(int i=0; i<a.length(); i++) {
//        	char c=a.charAt(i);
//        	if('A'<=c && c<='Z') {
//        		System.out.print((char)(c+32));
//        	}else {
//        		System.out.print((char)(c-32));
//        	}

		for (int i = 0; i < a.length(); i++) {
			char c = a.charAt(i);
			char r = '\0';
			if (Character.isUpperCase(c)) {
				r = Character.toLowerCase(c);
			} else {
				r = Character.toUpperCase(c);
			}
			System.out.println(r);
		}

		for (int i = 0; i < a.length(); i++) {
			int iA = a.charAt(i) - 1;
			int iB = iA / 10;
			int iC = (iB == 6 || iB == 7 || iB == 8) ? a.charAt(i) + 32 : a.charAt(i) - 32;

			System.out.print((char) iC);
		}
	}
}

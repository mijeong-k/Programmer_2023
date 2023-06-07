package q591_3;

import java.util.Scanner;

public class Q591_3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String a = sc.next();

		for (int i = 0; i < a.length(); i++) {
			char c = a.charAt(i);
			if ('A' <= c && c <= 'Z') {
				System.out.print((char) (c + 32));
			} else {
				System.out.print((char) (c - 32));
			}
		}
	}
}

package org.example;

import java.util.Scanner;

public class Palindrome {
    public static void main(String[] args) {
        int x; // 待校验的输入数字
        Scanner scanner = new Scanner(System.in);
        x = scanner.nextInt();
        boolean status;
        if(x < 0){
            status = false;
            System.out.println(status);
        }
        int cur = 0;
        int num = x;
        while(num != 0) {
            cur = cur * 10 + num % 10;
            num /= 10;
        }
        status = (cur==x);
        System.out.println(status);
    }
}

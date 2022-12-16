package test;

import java.time.LocalDateTime;

public class Test {
    public static void main(String[] args) {
        System.out.println("LocalDateTime.now() = "+ LocalDateTime.now());

        String s = LocalDateTime.now().toString();
        System.out.println("替换掉T = "+s.replace("T"," "));
    }
}

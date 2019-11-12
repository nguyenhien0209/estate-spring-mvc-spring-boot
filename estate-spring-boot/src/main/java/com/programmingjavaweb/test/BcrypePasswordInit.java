package com.programmingjavaweb.test;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BcrypePasswordInit {
    public static void main(String[] args) {
        BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
        System.out.println(bCrypt.encode("123456"));
    }
}

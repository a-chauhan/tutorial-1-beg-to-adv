package com.udemy.tutorial1begtoadv.web.service;

import org.springframework.stereotype.Component;

@Component
public class LoginService {

    public boolean validateUser(String name, String password){

        return name.equalsIgnoreCase("userid")
                && password.equalsIgnoreCase("pass");
    }
}

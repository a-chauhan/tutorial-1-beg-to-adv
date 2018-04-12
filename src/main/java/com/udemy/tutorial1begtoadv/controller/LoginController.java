package com.udemy.tutorial1begtoadv.controller;

import com.udemy.tutorial1begtoadv.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    LoginService service;

    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String showLoginPage(){
        return "login";
    }

    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String loginMessage(ModelMap model, @RequestParam String name, @RequestParam String password){
        boolean isValidUser = service.validateUser(name, password);

        if (!isValidUser) {
            System.out.println(name + password);
            return "login";
        }

        model.put("name", name);
        return "welcome";
    }
}

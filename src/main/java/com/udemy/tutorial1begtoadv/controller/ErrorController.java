package com.udemy.tutorial1begtoadv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller("error")
public class ErrorController {

    @ExceptionHandler(RuntimeException.class)
    public ModelAndView handleException
            (HttpServletRequest request, HttpServletResponse response, Exception ex){
        ModelAndView mav = new ModelAndView();
        mav.addObject("exception", ex);
        mav.addObject("url", request.getRequestURL());
        mav.setViewName("error");
        return mav;
    }
}

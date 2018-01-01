package com.youth.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by test
 * 跳转页面
 */
@Controller
@EnableAutoConfiguration
public class PageController {
	
    @RequestMapping("/index")
    public String login(HttpServletRequest request) {
        return "login";
    }

    @RequestMapping(value = "/fontpage", method = RequestMethod.GET)
    public ModelAndView fontpage(HttpServletRequest request) throws Exception{
    	
    	return new ModelAndView("fontpage");
    }
    
    @RequestMapping("/toupiaojiemian")
    public String toupiaojiemian(HttpServletRequest request) {
        return "toupiaojiemian";
    }
    
    @RequestMapping("/jieguochakan")
    public String jieguochakan(HttpServletRequest request) {
        return "jieguochakan";
    }
    
    @RequestMapping("/tongji")
    public String tongji(HttpServletRequest request) {
        return "tongji";
    }
}
package com.youth.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String login(HttpServletRequest request, ModelMap modelMap) {
    	String phone = request.getParameter("phone");
    	modelMap.addAttribute("phone", phone);
        return "login";
    }

    @RequestMapping(value = "/fontpage", method = RequestMethod.GET)
    public ModelAndView fontpage(HttpServletRequest request) throws Exception{
    	
    	return new ModelAndView("fontpage");
    }
    
    @RequestMapping("/toupiaojiemian")
    public String toupiaojiemian(@RequestParam(value = "userId",required=true) String userId,
    		ModelMap modelMap) {
    	modelMap.addAttribute("userId", userId);
        return "toupiaojiemian";
    }
    
    @RequestMapping("/jieguochakan")
    public String jieguochakan(@RequestParam(value = "userId") String userId,
    		ModelMap modelMap) {
    	modelMap.addAttribute("userId", userId);
        return "jieguochakan";
    }
    
    @RequestMapping("/tongji")
    public String tongji(HttpServletRequest request, ModelMap modelMap) {
        return "tongji";
    }
}
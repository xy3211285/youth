package com.youth.controller;

import com.youth.bean.User;
import com.youth.service.TestService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/test")
public class TestContoller {
    @Resource
    TestService testService;

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    @ResponseBody
    public String test() {
        User user = testService.getUserByName();
        return user.getName() + "-------" + user.getAge();
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String getUser() {
        User user = testService.getUser("xiaogang");
        return user.getName() + "-------" + user.getAge();
    }
}

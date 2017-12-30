package com.youth.service;


import com.youth.bean.User;

/**
 * Created by yanyong on 2017/1/25.
 */
public interface TestService {
    User getUserByName();

    User getUser(String name);
}

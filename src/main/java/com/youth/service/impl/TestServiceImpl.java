package com.youth.service.impl;

import com.youth.bean.User;
import com.youth.dao.UserDao;
import com.youth.dao.UserMapper;
import com.youth.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class TestServiceImpl implements TestService {

    @Resource
    UserMapper userMapper;

    @Autowired
    UserDao userDao;

    @Override
    public User getUserByName() {
        return userMapper.findUserByName("xiaoming");
    }

    @Override
    public User getUser(String name) {
        return userDao.getUserByName(name);
    }

}

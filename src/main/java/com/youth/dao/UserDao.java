package com.youth.dao;


import com.youth.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserDao {
    User getUserByName(@Param("name")String name);
}

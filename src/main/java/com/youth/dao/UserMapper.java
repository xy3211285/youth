package com.youth.dao;

import com.youth.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {
    @Select("select * from users where name = #{name}")
    User findUserByName(@Param("name")String name);
}

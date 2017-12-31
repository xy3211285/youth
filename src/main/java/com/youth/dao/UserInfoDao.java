package com.youth.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.youth.bean.BasicDepartment;
import com.youth.bean.Departments;
import com.youth.bean.UserInfo;
import com.youth.bean.VoteResult;

@Mapper
public interface UserInfoDao {
    UserInfo getUserInfoByPhone(@Param("phone")String phone);
    
    int saveRegisterInfo(@Param("user")UserInfo user);
    
    int saveDepartmentVoteInfo(@Param("departsList")List<Departments> departsList);
    
    int saveBasicDepartmentVoteInfo(@Param("basicList")List<BasicDepartment> basicList);
    
    List<Departments> getDepartmentVoteResult(@Param("userId")String userId);
    
    List<BasicDepartment> getBasicDepartmentVoteResult(@Param("userId")String userId);
    
    List<VoteResult> getStaticsResult(@Param("type")String type);
    
    List<Departments> getDepartments();
    
    List<BasicDepartment> getBasicDepartments();
    
}

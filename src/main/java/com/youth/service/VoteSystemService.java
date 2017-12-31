package com.youth.service;


import java.util.List;

import com.youth.bean.BasicDepartment;
import com.youth.bean.Departments;
import com.youth.bean.User;
import com.youth.bean.UserInfo;
import com.youth.bean.VoteResult;

/**
 * 投票系统service
 */
public interface VoteSystemService {
	
	UserInfo getUserInfoByPhone(UserInfo user);
	
    int saveRegisterInfo(UserInfo user);

    int saveDepartmentVoteInfo(List<Departments> departsList);
    
    int saveBasicDepartmentVoteInfo(List<BasicDepartment> basicList);
    
    List<Departments> getDepartmentVoteResult(String phone);
    
    List<BasicDepartment> getBasicDepartmentVoteResult(String phone);
    
    List<Departments> getDepartmentVoteResult();
    
    List<BasicDepartment> getBasicDepartmentVoteResult();
    
    
    List<VoteResult> getStaticsResult(String type);
}

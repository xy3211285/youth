package com.youth.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.youth.bean.BasicDepartment;
import com.youth.bean.Departments;
import com.youth.bean.UserInfo;
import com.youth.bean.VoteResult;
import com.youth.dao.UserInfoDao;
import com.youth.dao.UserInfoMapper;
import com.youth.service.VoteSystemService;

@Service
public class VoteSystemServiceImpl implements VoteSystemService {

	private static final Logger logger = Logger.getLogger(VoteSystemServiceImpl.class);
	
    @Resource
    UserInfoMapper userInfoMapper;

    @Autowired
    UserInfoDao userInfoDao;

	@Override
	public UserInfo getUserInfoByPhone(UserInfo user) {
		
		return userInfoDao.getUserInfoByPhone(user.getPhone());
	}

	@Override
	public int saveRegisterInfo(UserInfo user) {
		int result = userInfoDao.saveRegisterInfo(user);
		return result;
	}

	@Override
	public int saveDepartmentVoteInfo(List<Departments> departsList) {
		int result = userInfoDao.saveDepartmentVoteInfo(departsList);
		return result;
	}

	@Override
	public int saveBasicDepartmentVoteInfo(List<BasicDepartment> basicList) {
		int result = userInfoDao.saveBasicDepartmentVoteInfo(basicList);
		return result;
	}

	@Override
	public List<Departments> getDepartmentVoteResult(String phone) {
		
		return userInfoDao.getDepartmentVoteResult(phone);
	}

	@Override
	public List<BasicDepartment> getBasicDepartmentVoteResult(String phone) {
		// TODO Auto-generated method stub
		return userInfoDao.getBasicDepartmentVoteResult(phone);
	}

	@Override
	public List<VoteResult> getStaticsResult(String type) {
		// TODO Auto-generated method stub
		return userInfoDao.getStaticsResult(type);
	}

	@Override
	public List<Departments> getDepartmentVoteResult() {
		// TODO Auto-generated method stub
		return userInfoDao.getDepartments();
	}

	@Override
	public List<BasicDepartment> getBasicDepartmentVoteResult() {
		// TODO Auto-generated method stub
		return userInfoDao.getBasicDepartments();
	}

	
}

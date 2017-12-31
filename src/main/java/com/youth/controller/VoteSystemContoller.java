package com.youth.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.youth.bean.BasicDepartment;
import com.youth.bean.Departments;
import com.youth.bean.UserInfo;
import com.youth.bean.VoteResult;
import com.youth.service.VoteSystemService;
import com.youth.utils.GernatedId;
import com.youth.utils.JuheSmsAPI;
import com.youth.utils.RandomCode;

@RestController
@RequestMapping(value = "/vote", produces="application/json;charset=UTF-8")
public class VoteSystemContoller {
    @Resource
    VoteSystemService voteSystemService;

    private static final Logger logger = Logger.getLogger(VoteSystemContoller.class);
    
    /**
     * 登录
     * @param request
     * @return
     * @throws JSONException 
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject login(HttpServletRequest request) throws JSONException {
    	JSONObject obj = new JSONObject();
    	UserInfo user = new UserInfo();
    	String username = request.getParameter("username");
    	String pw = request.getParameter("password");
    	String phone = request.getParameter("phone");
    	if (StringUtils.isEmpty(username) || StringUtils.isEmpty(pw) || StringUtils.isEmpty(phone)){
    		obj.put("status", -3);
    		obj.put("msg", "请检查登录信息是否为空");
    		return obj;
    	}
    	
    	String id = GernatedId.getIdStr();
    	user.setId(id);
    	user.setPassword(pw);
    	user.setUsername(username);
    	user.setPhone(phone);
    	user.setRemark(null);
    	UserInfo u = voteSystemService.getUserInfoByPhone(user);
    	if (u == null){
    		obj.put("status", 0);
    		obj.put("msg", "账号不存在，请先注册");
    		return obj;
    	}else{
    		
    		if (!u.getUsername().equals(username) || !u.getPassword().equals(pw)){
    			obj.put("status", -1);
    			obj.put("msg", "账号或者密码有误，请重新输入");
    			return obj;
    		}
    		if (!u.getPhone().equals(phone)){
    			obj.put("status", -2);
    			obj.put("msg", "手机号码有误，请重新输入");
    			return obj;
    		}
    	}
    	obj.put("status", 1);
		obj.put("msg", "登录成功");
		obj.put("user", u);
        return obj;
    }
    
    /**
     * 注册
     * @param request
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    @ResponseBody
    public String register(HttpServletRequest request) {
    	
    	UserInfo user = new UserInfo();
    	String username = request.getParameter("username");
    	String pw = request.getParameter("password");
    	String phone = request.getParameter("phone");
    	
    	if (StringUtils.isEmpty(username)){
    		return "用户名为空";
    	}
    	if (StringUtils.isEmpty(pw)){
    		return "密码为空";
    	}
    	if (StringUtils.isEmpty(phone)){
    		return "手机号码为空";
    	}
    	String id = GernatedId.getIdStr();
    	user.setId(id);
    	user.setPassword(pw);
    	user.setUsername(username);
    	user.setPhone(phone);
    	user.setRemark(null);
    	UserInfo u = voteSystemService.getUserInfoByPhone(user);
    	if (u != null){
    		return "注册失败，当前的手机号码已经被注册";
    	}
    	int sta = voteSystemService.saveRegisterInfo(user);
    	if (sta > 0){
    		return "注册成功";
    	}else{
    		return "注册失败";
    	}
        
    }
    
    /**
     * 获取部门页面的部门信息，如果已经投票则展示当前用户的投票信息
     * @author Administrator
     * @throws JSONException
     */
    @RequestMapping(value = "/getDepartmentVoteResult", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getDepartmentVoteResult(HttpServletRequest request) throws JSONException {
    	JSONObject obj = new JSONObject();
    	List<Departments> departList = null;
    	String userId = request.getParameter("userId");
    	departList = voteSystemService.getDepartmentVoteResult(userId);
    	if (CollectionUtils.isEmpty(departList)){
    		departList = voteSystemService.getDepartmentVoteResult();
    	}
    	
    	obj.put("data", departList);
    	return obj;
    }
    
    /**
     * 获取基层单位的页面的部门信息，如果已经投票则展示当前用户的投票信息
     * @author Administrator
     * @throws JSONException
     */
    @RequestMapping(value = "/getBasicDepartmentVoteResult", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getBasicDepartmentVoteResult(HttpServletRequest request) throws JSONException {
    	JSONObject obj = new JSONObject();
    	List<BasicDepartment> basicList = null;
    	String userId = request.getParameter("userId");
        basicList = voteSystemService.getBasicDepartmentVoteResult(userId);
        if (CollectionUtils.isEmpty(basicList)){
        	basicList = voteSystemService.getBasicDepartmentVoteResult();
    	}
        obj.put("data", basicList);
    	return obj;
    }

    
    /**
     * 获取基层单位的页面的部门信息，如果已经投票则展示当前用户的投票信息
     * @author Administrator
     * @throws JSONException
     */
    @RequestMapping(value = "/saveDepartmentVoteInfo", method = RequestMethod.POST)
    @ResponseBody
    public String saveDepartmentVoteInfo(HttpServletRequest request,
    		@RequestParam(value="userId")String userId,
    		@RequestBody List<Departments> departList) throws JSONException {
    	//String departs = request.getParameter("departList");
    	//List<BasicDepartment> departList = JSONArray.parseArray(departs,BasicDepartment.class);
    	for (Departments department : departList) {
    		department.setId(GernatedId.getIdStr());
    		department.setUserId(userId);
		}
        int  status = voteSystemService.saveDepartmentVoteInfo(departList);
        if (status > 0){
        	return "success";
        }
    	return "fail";
    }
    
    /**
     * 获取基层单位的页面的部门信息，如果已经投票则展示当前用户的投票信息
     * @author Administrator
     * @throws JSONException
     */
    @RequestMapping(value = "/saveBasicDepartmentVoteInfo", method = RequestMethod.POST)
    @ResponseBody
    public String saveBasicDepartmentVoteInfo(HttpServletRequest request,
    		@RequestParam(value="userId")String userId,
    		@RequestBody List<BasicDepartment> departList) throws JSONException {
    	for (BasicDepartment basicDepartment : departList) {
    		basicDepartment.setId(GernatedId.getIdStr());
    		basicDepartment.setUserId(userId);
		}
    	int status = voteSystemService.saveBasicDepartmentVoteInfo(departList);
    	if (status > 0){
        	return "success";
        }
    	return "fail";
    }
    
    /**
     * 获取基层单位的页面的部门信息，如果已经投票则展示当前用户的投票信息
     * @author Administrator
     * @throws JSONException
     */
    @RequestMapping(value = "/getStaticsResult", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getStaticsResult(HttpServletRequest request) throws JSONException {
    	String type = request.getParameter("type");
    	if ("1".equals(type)){
    		type = "departments";

    	}else{
    		type = "basic_department";
    	}
    	List<VoteResult> voteResult = voteSystemService.getStaticsResult(type);
    	JSONObject obj = new JSONObject();
    	obj.put("data", voteResult);
    	return obj;
    }
    
    /**
     * 获取手机验证码
     * @author Administrator
     * @param phone
     * @throws Exception 
     * @throws JSONException 
     */
    @RequestMapping(value = "/getValidateCode", method = RequestMethod.GET)
    @ResponseBody
    public String getValidateCode(@RequestParam("phone")String phone) throws Exception{
    	String apiUrl = "http://v.juhe.cn/sms/send";
    	String mobile = phone;
    	String code = RandomCode.getValidateCode();
    	String text = "#code#=" + code;
    	String apiKey = "b5655a21da422ef1158632f47ced359a";
    	String tplid = "25465";
    	Map<String, Object> codeMap = JuheSmsAPI.sendSms(apiUrl, mobile, text,apiKey ,tplid);
    	
    	return codeMap.toString();
    }
    
    @RequestMapping(value = "/fontpage", method = RequestMethod.GET)
    public ModelAndView fontpage() throws Exception{
    	
    	return new ModelAndView("fontpage");
    }
}

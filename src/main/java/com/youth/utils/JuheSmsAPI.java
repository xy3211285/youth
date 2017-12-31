package com.youth.utils;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

public class JuheSmsAPI{
	public static final String JSON_CODE_CODE = "code";
	private static final Logger logger = Logger.getLogger(JuheSmsAPI.class);

	public static Map<String, Object>  sendSms(String apiUrl,String mobile,String text,String apiKey,String tplid) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		  String result =null;
		  // "http://v.juhe.cn/sms/send";//请求接口地址
	       
	        Map<String, Object> params = new HashMap<String, Object>();//请求参数
          params.put("mobile",mobile);//接收短信的手机号码
          params.put("tpl_id",tplid);//短信模板ID，请参考个人中心短信模板设置
          params.put("tpl_value",URLEncoder.encode(text, "UTF-8"));
          params.put("key",apiKey);//应用APPKEY(应用详细页查询)
          params.put("dtype","json");//返回数据的格式,xml或json，默认json
          
	        try {
	            result =net(apiUrl, params, "GET");
	       
	            JSONObject object = JSONObject.fromObject(result);
	            if(object.getInt("error_code")==0){
	            	map.put("code", 200);
	            	map.put("msg", "短信发送成功");
	            }else{
	            	map.put("code",101);
	            	map.put("msg",object.get("reason"));
	            }
	        } catch (Exception e) {
	        	map.put("code",-1);
	          
	            logger.error("聚合短信错误：", e);
	        }
	    
			return map;
	}
	
	//http://v.juhe.cn/sms/send?mobile=15926207208&tpl_id=25465&tpl_value=您的验证码是#546123#&key=b5655a21da422ef1158632f47ced359a

	   public static final String DEF_CHATSET = "UTF-8";
	    public static final int DEF_CONN_TIMEOUT = 30000;
	    public static final int DEF_READ_TIMEOUT = 30000;
	    public static String userAgent =  "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36";
	 
	

	
	/*
     * @param strUrl 请求地址
     * @param params 请求参数
     * @param method 请求方法
     * @return  网络请求字符串
     * @throws Exception
     */
    public static String net(String strUrl, Map params,String method) throws Exception {
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        String rs = null;
        try {
            StringBuffer sb = new StringBuffer();
            if(method==null || method.equals("GET")){
                strUrl = strUrl+"?"+urlencode(params);
            }
            URL url = new URL(strUrl);
            conn = (HttpURLConnection) url.openConnection();
            if(method==null || method.equals("GET")){
                conn.setRequestMethod("GET");
            }else{
                conn.setRequestMethod("POST");
                conn.setDoOutput(true);
            }
            conn.setRequestProperty("User-agent", userAgent);
            conn.setUseCaches(false);
            conn.setConnectTimeout(DEF_CONN_TIMEOUT);
            conn.setReadTimeout(DEF_READ_TIMEOUT);
            conn.setInstanceFollowRedirects(false);
            conn.connect();
            if (params!= null && method.equals("POST")) {
                try {
                    DataOutputStream out = new DataOutputStream(conn.getOutputStream());
                        out.writeBytes(urlencode(params));
                } catch (Exception e) {
                    // TODO: handle exception
                }
            }
            InputStream is = conn.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, DEF_CHATSET));
            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                sb.append(strRead);
            }
            rs = sb.toString();
        } catch (IOException e) {
          
        } finally {
            if (reader != null) {
                reader.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rs;
    }
 
    //将map型转为请求参数型
    public static String urlencode(Map<String,Object>data) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry i : data.entrySet()) {
            try {
                sb.append(i.getKey()).append("=").append(URLEncoder.encode(i.getValue()+"","UTF-8")).append("&");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }
    
    
	
}


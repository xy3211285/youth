package com.youth.utils;

import java.util.Random;

public class RandomCode {
	
	public static String getValidateCode(){
		//String code = ((Math.random()*9+1)*100000+"").substring(0,);
		Random random = new Random();  
	    String result="";  
	    for (int i=0;i<6;i++)  
	    {  
	        result+=random.nextInt(10);  
	    }  
	    return result;
	}
	

}

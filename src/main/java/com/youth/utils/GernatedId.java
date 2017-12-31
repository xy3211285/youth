package com.youth.utils;

public class GernatedId {
	/**
	 * 生成不重复随机字符串包括字母数字
	 *
	 * @return
	 */
	public static String getIdStr() {
	    //字符源，可以根据需要删减
		int len = 10;
	    String generateSource = "0123456789abcdefghigklmnopqrstuvwxyz";
	    String rtnStr = "";
	    for (int i = 0; i < len; i++) {
	        //循环随机获得当次字符，并移走选出的字符
	        String nowStr = String.valueOf(generateSource.charAt((int) Math.floor(Math.random() * generateSource.length())));
	        rtnStr += nowStr;
	        generateSource = generateSource.replaceAll(nowStr, "");
	    }
	    return rtnStr;
	}

}

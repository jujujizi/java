package com.zhangying.tool;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static final String yyMMdd="yy-MM-dd";		//短日期格式
    public static final String yyyyMMdd="yyyy-MM-dd";	//长日期格式
    public static final String HHmmss="HH:mm:ss";		//时间格式
    public static final String yyyyMMddHHmmss
    							="yyyy-MM-dd HH:mm:ss";	//长日期时间格式
    public static final String yyMMddHHmmss
    							="yy-MM-dd HH:mm:ss";	//短日期时间格式

    public static Date parseToDate(String s, String style) {//字符串转换成日期时间
        SimpleDateFormat simpleDateFormat 
        					= new SimpleDateFormat();	//实例化日期格式化类
        simpleDateFormat.applyPattern(style);			//提交转换格式
        Date date = null;
        if(s==null||s.length()<8)						//字符串为空或长度小于8
            return null;								//无法转换，返回null值	
        try {
            date = simpleDateFormat.parse(s);			//进行转换
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    public static String parseToString(String s, String style) {//格式化日期字符串
        SimpleDateFormat simpleDateFormat 
        					= new SimpleDateFormat();	//实例化日期格式化类
        simpleDateFormat.applyPattern(style);			//提交转换格式
        Date date = null;
        String str=null;
        if(s==null||s.length()<8)						//字符串为空或长度小于8
            return null;								//无法转换，返回null值
        try {
            date = simpleDateFormat.parse(s);			//将字符串转换成日期格式
            str=simpleDateFormat.format(date);			//将日期格式化为字符串
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String parseToString(Date date, String style) {//日期时间转换成字符串
        SimpleDateFormat simpleDateFormat 
        				= new SimpleDateFormat();		//实例化日期格式化类
        simpleDateFormat.applyPattern(style);			//提交转换格式
        String str=null;
        if(date==null)									//如果日期时间为null
            return null;								//返回null值
        str=simpleDateFormat.format(date);				//将日期格式化为字符串
        return str;
    }

}

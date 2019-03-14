package com.zhangying.tool;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActionServlet extends org.apache.struts.action.ActionServlet {
    protected void process(HttpServletRequest httpservletrequest,HttpServletResponse httpservletresponse) throws IOException,ServletException {
        setCharset(httpservletrequest);//设置编码
        super.process(httpservletrequest, httpservletresponse);//调用父类处理方法
    }

    private void setCharset(HttpServletRequest httpservletrequest) {
        String s = getServletConfig().getInitParameter("charset");//获得初始化参数
        if (s == null || s.length() == 0) {//如果参数为空，或者为null
            s="GBK";						//设置参数值为GBK
        }
        try {
            httpservletrequest.setCharacterEncoding(s);//设置请求编码格式
        } catch (UnsupportedEncodingException unsupportedencodingexception) {
            log("set character encoding error", unsupportedencodingexception);
        }
    }
}

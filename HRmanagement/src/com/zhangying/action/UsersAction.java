package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

import com.zhangying.dao.UsersDao;
import com.zhangying.po.Users;

public class UsersAction extends Action {

    private UsersDao dao=new UsersDao();

	public ActionForward execute(ActionMapping mapping, ActionForm form,
		HttpServletRequest request, HttpServletResponse response) throws Exception {
		String action =request.getParameter("action");
		if(action==null||" ".equals(action)){
			return mapping.findForward("error");
		}else if("listuser".equals(action)){
			return listUser(mapping,form,request,response);
		}else if("adduser".equals(action)){
			return addUsers(mapping,form,request,response);
		}else if("logon".equals(action)){
			return logon(mapping,form,request,response);
		}else if("updateuser".equals(action)){
			return updateUser(mapping,form,request,response);
		}else if("deleteuser".equals(action)){
			return deleteUser(mapping,form,request,response);
		}else if("selectuser".equals(action)){
			return selectUser(mapping,form,request,response);
		}
		return mapping.findForward("error");
	}

	private ActionForward selectUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		Long id=new Long(request.getParameter("id"));//获得id参数
		Users u=dao.loadUsers(id);//加载该ID对应的人员信息
		request.setAttribute("user",u);//将人员信息设置到request范围
		return mapping.findForward("success");//跳转到success对应的逻辑视图
	}
	
	private ActionForward updateUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		UsersForm usersform=(UsersForm)form;//获得UsersForm
		Users users=usersform.populate();//获得提交的人员信息
		dao.updateUsers(users);//更新人员信息
		return mapping.findForward("success");//跳转到success对应的逻辑视图
	}

	private ActionForward deleteUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		Long id=new Long(request.getParameter("id"));//获得id参数
		Users users=new Users();//新建一个users对象
		users.setId(id);//设置该users对象的id
		dao.deleteUsers(users);//删除该users对象
		return mapping.findForward("success");
	}
    private ActionForward logon(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws HibernateException {
        UsersForm usersform=(UsersForm)form;
 //       System.out.println("userform="+form);
        Users users=new Users();
        users.setUsername(usersform.getUsername());
        users.setPassword(usersform.getPassword());
        //users.setUsername(request.getParameter("username"));
        //users.setPassword(request.getParameter("password"));
        boolean flag=dao.logonUsers(users);
        if(flag){
            request.getSession().setAttribute("users",users);
            return mapping.findForward("success");
        }else{
        	request.setAttribute("error", "登录失败");
            return mapping.findForward("failed");
       }
    }

	private ActionForward addUsers(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
	    UsersForm usersform=(UsersForm)form;	//获得UsersForm
	    Users users=usersform.populate();		//获得提交的人员信息
	    dao.addUsers(users);					//完成人员信息保存
	    return mapping.findForward("success");	//跳转到成功页面
	}

	private ActionForward listUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
	    request.setAttribute("list",dao.listUser());//将人员信息列表保存到request范围
	    return mapping.findForward("success");		//跳转到成功页面
	}

}

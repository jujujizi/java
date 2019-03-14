package com.zhangying.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zhangying.hb.HibernateSessionFactory;
import com.zhangying.po.Users;

public class UsersDao {
	public void addUsers(Users users){	//新增人员信息
	    users.setCreatetime(new java.util.Date());//设置创建时间
	    Session session = HibernateSessionFactory.getSession();//获得Seesion对象
	    Transaction tx = session.beginTransaction();//开启事务
	    session.save(users);//保存用户
	    tx.commit();//提交事务
	    HibernateSessionFactory.closeSession();//关闭Seesion对象
	}
	public void deleteUsers(Users users){//删除人员信息
		Session session = HibernateSessionFactory.getSession();//获得Seesion对象
		Transaction tx = session.beginTransaction();//开启事务
		session.delete(users);//删除users对象
		tx.commit();//提交事务
		HibernateSessionFactory.closeSession();//关闭Seesion对象
	}
	public void updateUsers(Users users){//更新人员信息
		Users u = loadUsers(users.getId());//加载该ID对应的人员信息
		if (users.getBirthday() != null){
			u.setBirthday(users.getBirthday());//设置出生日期
		}
	    if(users.getSex()!=null){
	    	u.setSex(users.getSex());//设置性别
	    }
		if (users.getContent() != null) {
			u.setContent(users.getContent());//设置人员简介
	    }
		if (users.getIsadmin() != null) {
			u.setIsadmin(users.getIsadmin());//设置是否为管理员
	    }
		if (users.getPassword() != null) {
			u.setPassword(users.getPassword());//设置登录密码
		}
		Session session = HibernateSessionFactory.getSession();//获得Session对象
		Transaction tx = session.beginTransaction();//开启事务
		session.update(u);//更新对象
		tx.commit();//提交事务
		HibernateSessionFactory.closeSession();//关闭Session对象
	}
	public Users loadUsers(long id){//加载人员信息
		Session session = HibernateSessionFactory.getSession();//获得Session对象
		Users u = (Users)session.get(Users.class, id);//加载指定ID的Users对象
		return u;
	}
    public boolean logonUsers(Users users){//人员登录
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("select count(*) from Users as u where username = :name and password =:password");
        query.setString("name", users.getUsername());
        query.setString("password", users.getPassword());
		List list = null;
        list = query.list();
        tx.commit();
        HibernateSessionFactory.closeSession();
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                if ((Long) it.next() == 1) {
                    return true;
                }
            }
        }
        return false;
    }
	public List listUser(){//显示人员列表
	    Session session = HibernateSessionFactory.getSession();//获得Session对象
	    Query query = session.createQuery("select u from Users as u order by createtime");//执行查询
	    List list = query.list();//获得查询列表
	    HibernateSessionFactory.closeSession();//关闭Session对象
	    return list;		//返回人员列表
	}
}

package com.zhangying.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zhangying.hb.HibernateSessionFactory;
import com.zhangying.po.Job;

public class JobDao {

	public void addJob(Job job) throws HibernateException{
	    job.setIsstock(new Byte("0"));//设置入库信息为0，表示暂时不入库
	    job.setCreatetime(new java.util.Date());//设置当前时间
	    Session session = HibernateSessionFactory.getSession();//获得Session对象
	    Transaction tx = session.beginTransaction();//开启事务处理
	    session.save(job);//保存应聘人员信息
	    tx.commit();//提交事务
	    HibernateSessionFactory.closeSession();//关闭Session对象
	}

	public List listJob(byte isstock) throws HibernateException{
		Session session = HibernateSessionFactory.getSession();//获得Session对象
		Query query = session.createQuery("select j from Job " +
			"as j where j.isstock = :isstock order by createtime");//查询所有应聘信息
		query.setByte("isstock",isstock);//设置是否入库
		List list = query.list();//获得应聘信息列表
		HibernateSessionFactory.closeSession();//关闭Session对象
		return list;
	}

	public Job loadJob(long id){
		Session session = HibernateSessionFactory.getSession();//获得Session对象
		Job j = (Job) session.get(Job.class,id);//加载指定ID的应聘信息
		HibernateSessionFactory.closeSession();//关闭Session对象
		return j;//返回查询对象
	}

	public void deleteJob(Job job) throws HibernateException{
		Session session = HibernateSessionFactory.getSession();//获得Session对象
		Transaction tx = session.beginTransaction();//开启事务处理
		session.delete(job);//删除该job对象
		tx.commit();//提交事务
		HibernateSessionFactory.closeSession();//关闭Session对象
	}

    public void updateJob(Job job){
        Job j = loadJob(job.getId().longValue());
        if (job.getAge()!=null){
            j.setAge(job.getAge());
        }
        if(job.getContent()!=null){
            j.setContent(job.getContent());
        }
        if (job.getExperience() != null) {
            j.setExperience(job.getExperience());
        }
        if (job.getIsstock()!= null) {
            j.setIsstock(job.getIsstock());
        }
        if(job.getJob()!=null){
            j.setJob(job.getJob());
        }
        if(job.getName()!=null){
            j.setName(job.getName());
        }
        if(job.getSchool()!=null){
            j.setSchool(job.getSchool());
        }
        if(job.getSex()!=null){
            j.setSex(job.getSex());
        }
        if(job.getHealth()!=null){
            j.setHealth(job.getHealth());
        }
        if(job.getSpecialty()!=null){
            j.setSpecialty(job.getSpecialty());
        }
        if(job.getStudyeffort()!=null){
            j.setStudyeffort(job.getStudyeffort());
        }
        if(job.getTel()!=null){
            j.setTel(job.getTel());
        }
        if(job.getEmail()!=null){
            j.setEmail(job.getEmail());
        }
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.update(j);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }
}

package com.zhangying.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zhangying.hb.HibernateSessionFactory;
import com.zhangying.po.Performance;

/**
 * @author f(x)º¯Êý
 *
 */
public class PerformanceDao {

    public void addPerformance(Performance e) throws HibernateException{
        e.setCreatetime(new java.util.Date());
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.save(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

    public void deletePerformance(Performance e) throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.delete(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

    public Performance loadPerformance(long id) throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        Performance e=(Performance)session.get(Performance.class,new Long(id));
        tx.commit();
        HibernateSessionFactory.closeSession();
        return e;
    }

    public List listPerformance() throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("select e from Performance as e order by createtime");
        List list = query.list();
        tx.commit();
        HibernateSessionFactory.closeSession();
        return list;
    }

    public void updatePerformance(Performance ins) throws HibernateException{
    	Performance e =this.loadPerformance(ins.getId().longValue());
        if (ins.getContent()!=null) {
            e.setContent(ins.getContent());
        }
        if(String.valueOf(ins.getScore())!=null){
            e.setScore(ins.getScore());
        }
        if (String.valueOf(ins.getAddmoney())!=null){
            e.setAddmoney(ins.getAddmoney());
        }
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.update(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }


}
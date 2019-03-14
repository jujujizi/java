package com.zhangying.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zhangying.hb.HibernateSessionFactory;
import com.zhangying.po.Stipend;

/**
 * @author BWeiMing
 *
 */
public class StipendDao {

    /**
     *	计算工资总数
     **/
    private Stipend getCountTotalize(Stipend e){
        float count=0;
        count=count+e.getBasic().longValue();
        count=count+e.getDuty();
        count=count+e.getOther();
        count=count-e.getPunishment();
        e.setTotalize(new Float(count));
        return e;
    }

    public void addStipend(Stipend e) throws HibernateException{
        e=getCountTotalize(e);
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.save(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

    public void deleteStipend(Stipend e) throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.delete(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

    public Stipend loadStipend(long id) throws HibernateException{
    	System.out.println("33333444");
    	Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        System.out.println("33333");
        Stipend e=(Stipend)session.get(Stipend.class,new Long(id));
        System.out.println("e="+e);
        tx.commit();
        HibernateSessionFactory.closeSession();
        return e;
    }

    public List listStipend() throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("select e from Stipend as e order by e.granttime");
        List list = query.list();
        tx.commit();
        HibernateSessionFactory.closeSession();
        return list;
    }

    public void updateStipend(Stipend stipend) throws HibernateException{
    	Stipend e =new Stipend();
    	Long l=stipend.getId();
    	e =this.loadStipend(l.longValue());
    	if (String.valueOf(stipend.getBasic())!=null){
            e.setBasic(stipend.getBasic());
        }
        if(stipend.getGranttime()!=null){
            e.setGranttime(stipend.getGranttime());
        }
        if(stipend.getName()!=null){
            e.setName(stipend.getName());
        }
        if(String.valueOf(stipend.getOther())!=null){
            e.setOther(stipend.getOther());
        }
        if(String.valueOf(stipend.getPunishment())!=null){
            e.setPunishment(stipend.getPunishment());
        }
        e=getCountTotalize(e);
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.update(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }


}

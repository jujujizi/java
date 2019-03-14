package com.zhangying.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zhangying.hb.HibernateSessionFactory;
import com.zhangying.po.Educate;

/**
 * @author BWeiMing
 *
 */
public class EducateDao {

    public void addEducate(Educate e) throws HibernateException{
        e.setCreatetime(new java.util.Date());
        e.setEducate(new Byte("0"));
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.save(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

    public void deleteEducate(Educate e) throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.delete(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

    public Educate loadEducate(long id) throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        Educate e=(Educate)session.get(Educate.class,new Long(id));
        tx.commit();
        HibernateSessionFactory.closeSession();
        return e;
    }

    public List listEducate(byte educate) throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("select e from Educate as e where e.educate =:educate order by createtime");
        query.setByte("educate",educate);
        List list = query.list();
        tx.commit();
        HibernateSessionFactory.closeSession();
        return list;
    }

    public void updateEducate(Educate educate) throws HibernateException{
        Educate e =this.loadEducate(educate.getId().longValue());
        if (educate.getBegintime()!=null){
            e.setBegintime(educate.getBegintime());
        }
        if(educate.getDatum()!=null){
            e.setDatum(educate.getDatum());
        }
        if (educate.getEffect()!= null) {
            e.setEffect(educate.getEffect());
        }
        if (educate.getEndtime()!= null) {
            e.setEndtime(educate.getEndtime());
        }
        if(educate.getName()!=null){
            e.setName(educate.getName());
        }
        if(educate.getPurpose()!=null){
            e.setPurpose(educate.getPurpose());
        }
        if(educate.getStudent()!=null){
            e.setStudent(educate.getStudent());
        }
        if(educate.getSummarize()!=null){
            e.setSummarize(educate.getSummarize());
        }
        if(educate.getEducate()!=null){
            e.setEducate(educate.getEducate());
        }
        if(educate.getTeacher()!=null){
            e.setTeacher(educate.getTeacher());
        }
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.update(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

}

package com.zhangying.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zhangying.hb.HibernateSessionFactory;
import com.zhangying.po.Institution;

/**
 * @author BWeiMing
 *
 */
public class InstitutionDao {

    public void addInstitution(Institution e) throws HibernateException{
        e.setCreatetime(new java.util.Date());
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.save(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

    public void deleteInstitution(Institution e) throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.delete(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }

    public Institution loadInstitution(long id) throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        Institution e=(Institution)session.get(Institution.class,new Long(id));
        tx.commit();
        HibernateSessionFactory.closeSession();
        return e;
    }

    public List listInstitution() throws HibernateException{
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("select e from Institution as e order by createtime");
        List list = query.list();
        tx.commit();
        HibernateSessionFactory.closeSession();
        return list;
    }

    public void updateInstitution(Institution ins) throws HibernateException{
        Institution e =this.loadInstitution(ins.getId().longValue());
        if (ins.getExplain()!=null){
            e.setExplain(ins.getExplain());
        }
        if(ins.getName()!=null){
            e.setName(ins.getName());
        }
        if (ins.getReason()!= null) {
            e.setReason(ins.getReason());
        }
        Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
        session.update(e);
        tx.commit();
        HibernateSessionFactory.closeSession();
    }


}

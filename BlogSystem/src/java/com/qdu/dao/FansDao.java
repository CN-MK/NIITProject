/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.FansStatus;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class FansDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List getFansList() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from FansStatus");
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    public FansStatus apply(String pid,String sid){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from FansStatus where PID=? and SID=?");
        query.setString(0, pid);
        query.setString(1, sid);
        ArrayList arlist = (ArrayList) query.list();
        session.getTransaction().commit();
        session.close();
        if (arlist.size() == 0 || arlist.isEmpty()) {
            return null;
        } else { 
            return (FansStatus)arlist.iterator();
        }
    }
    
    public List getFansByid(String pid) {//看粉丝数
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from FansStatus where PID=? and Astatus=1");
        query.setString(0, pid);
        ArrayList arlist = (ArrayList) query.list();
        session.getTransaction().commit();
        session.close();
        if (arlist.size() == 0 || arlist.isEmpty()) {
            return null;
        } else {
            return arlist;
        }
    }

    public List getCareBySid(String pid) { //看关注数
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from FansStatus where PID=? and Astatus=0");
        query.setString(0, pid);
        ArrayList arlist = (ArrayList) query.list();
        session.getTransaction().commit();
        session.close();
        if (arlist.size() == 0 || arlist.isEmpty()) {
            return null;
        } else {
            return arlist;
        }
    }


    public void updateApply(FansStatus a) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(a);
        session.getTransaction().commit();
        session.close();
    }

    public int addApply(String PID,String SID,int ASTATUS) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery sQLQuery = session.createSQLQuery("insert into FansStatus(PID,SID,Astatus) values(?,?,?)");
        sQLQuery.setString(0,PID);
        sQLQuery.setString(1,SID);
        sQLQuery.setInteger(2,ASTATUS);
        sQLQuery.addEntity(FansStatus.class);
        if (sQLQuery.executeUpdate() == 1) {
            session.getTransaction().commit();
            session.close();
            return 1;

        } else {
            session.getTransaction().commit();
            session.close();
            return 0;
        }
    }  
}

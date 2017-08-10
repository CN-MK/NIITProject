/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.Information;
import com.qdu.pojo.Students;
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
public class InfoDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Information getInfoBySid(String sid) {
        System.out.println("ssssssssssssss" + sessionFactory);
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Information where SID=?");
        query.setString(0, sid);
        ArrayList arlist = (ArrayList) query.list();
        session.getTransaction().commit();
        session.close();
        if (arlist.size() == 0 || arlist.isEmpty()) {
            return null;
        } else {
            Information r = (Information) arlist.get(0);
            return r;
        }

    }

    public void saveInformation(Information resume) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(resume);
        session.getTransaction().commit();
        session.close();
    }

}

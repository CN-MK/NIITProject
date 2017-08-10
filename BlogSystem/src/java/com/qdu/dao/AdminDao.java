package com.qdu.dao;

import com.qdu.pojo.Admin;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Admin getAdmin(int aid) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Admin a = (Admin) session.get(Admin.class, aid);
        session.getTransaction().commit();
        session.close();
        return a;
    }

    public int insertAdmin(String aname, String apwd) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery sQLQuery = session.createSQLQuery("insert into Admin(AName,APwd) values(?,?)");
        sQLQuery.setString(0, aname);
        sQLQuery.setString(1, apwd);
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

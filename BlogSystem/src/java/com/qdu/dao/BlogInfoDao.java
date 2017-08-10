package com.qdu.dao;

import com.qdu.pojo.Blog;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BlogInfoDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List getblogInfo(String blogtitle) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery query = session.createSQLQuery("select * from Blog where blogtitle=?");
        query.addEntity(Blog.class);
        query.setString(0, blogtitle);
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    public List getblogInfoList(String sid) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery query = session.createSQLQuery("select * from Blog where SID=?");
        query.addEntity(Blog.class);
        query.setString(0, sid);
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

     public List getAllblog() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery query = session.createSQLQuery("select * from Blog ");
        query.addEntity(Blog.class);
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    public void delete(int pid) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Blog p = (Blog) session.get(Blog.class, pid);
        session.delete(p);
        session.getTransaction().commit();
        session.close();
    }

    public void addnewblog(Blog p) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(p);
        session.getTransaction().commit();
        session.close();
    }

    public List getblogByTypeAndMajor(String type, String majors) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery sQLQuery = session.createSQLQuery("select * from Blog where Majors=? and Type=?");
        sQLQuery.addEntity(Blog.class);
        sQLQuery.setString(0, majors);
        sQLQuery.setString(1, type);
        List list = sQLQuery.list();
        if (list == null) {
            session.getTransaction().commit();
            session.close();
            return null;
        } else {
            session.getTransaction().commit();
            session.close();
            return list;
        }

    }

    public List getApplicationBlog() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery sQLQuery = session.createSQLQuery("select * from Blog where Type=?");
        sQLQuery.addEntity(Blog.class);
        sQLQuery.setString(0, "应用");
        List list = sQLQuery.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    public List getResearchblog() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery SQLQuery = session.createSQLQuery("select * from Blog where Type=?");
        SQLQuery.addEntity(Blog.class);
        SQLQuery.setString(0, "研究");
        List list = SQLQuery.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    public List getNewblog(){
     Session session = sessionFactory.openSession();
        session.beginTransaction();
        SQLQuery sQLQuery=session.createSQLQuery("select top 10 * from blog order by Date asc");
        sQLQuery.addEntity(Blog.class);
       List list= sQLQuery.list();
       session.getTransaction().commit();
       session.close();
       return list;
    }

}

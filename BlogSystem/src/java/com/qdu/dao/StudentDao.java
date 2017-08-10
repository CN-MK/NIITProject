
    package com.qdu.dao;

    import com.qdu.pojo.FansStatus;
    import com.qdu.pojo.Students;
    import java.util.List;
    import org.hibernate.Query;
    import org.hibernate.Session;
    import org.hibernate.SessionFactory;
    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.stereotype.Repository;
    @Repository
    public class StudentDao {    

        @Autowired
        private SessionFactory sessionFactory;

        public Students getStudent(String sid){
            System.out.println("ssssssssssssss"+sessionFactory);
            Session session=sessionFactory.openSession();
            session.beginTransaction();
            Students s=(Students)session.get(Students.class,sid);
            session.getTransaction().commit();
            session.close();
            return s;
        }
          public List getStudentList() {
            Session session = sessionFactory.openSession();
            session.beginTransaction();
            Query query = session.createQuery("from Students");
            List list = query.list();
            session.getTransaction().commit();
            session.close();
            return list;
        }
        public void insertStudent(Students newStudent){
            Session session=sessionFactory.openSession();
            session.beginTransaction();
            session.save(newStudent);
            session.getTransaction().commit();
            session.close();
        }
           public void update(Students s){
            Session session = sessionFactory.openSession();
            session.beginTransaction();
            session.update(s);
            session.getTransaction().commit();
            session.close();
        }
    }

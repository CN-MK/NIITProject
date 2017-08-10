
package com.qdu.service;

import com.qdu.dao.StudentDao;
import com.qdu.pojo.FansStatus;
import com.qdu.pojo.Information;
import com.qdu.pojo.Students;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {
    
    @Autowired
    private StudentDao studentDao;
    
    public Students validateStudent(String sid,String spwd){
        Students s=studentDao.getStudent(sid);
        
        if(s!=null&&s.getSpwd().equals(spwd))
            return s;
        else
            return null;
    }
     public List getStudentList(){
        return studentDao.getStudentList();
    }
     public Students getStundent(String sid){
            return studentDao.getStudent(sid);
     }
    public boolean registerStudent(Students newStudent){
        try{
            studentDao.insertStudent(newStudent);
            return true;
        }catch(Exception e){
            return false;
        }
    }
    public Information getInfo(Students s){
        Iterator<Information> it =s.getInformations().iterator();
        return (Information)it.next();
    }
    public void update(Students s) {
        studentDao.update(s);
    }
}

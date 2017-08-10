
package com.qdu.service;

import com.qdu.dao.AdminDao;
import com.qdu.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    
    @Autowired
    private AdminDao adminDao;
    
    public Admin validateAdmin(Integer aid,String apwd){
        Admin a=adminDao.getAdmin(aid);
        
        if(a!=null&&a.getApwd().equals(apwd))
            return a;
        else
            return null;
    }
     public Admin getAdmin(Integer aid){
         return  adminDao.getAdmin(aid);
    }
       public int adregister(String aname,String apwd){
          return adminDao.insertAdmin(aname,apwd);
    }
}

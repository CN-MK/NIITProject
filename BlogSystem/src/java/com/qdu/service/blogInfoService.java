package com.qdu.service;

import com.qdu.dao.BlogInfoDao;
import com.qdu.dao.StudentDao;
import com.qdu.pojo.Blog;
import com.qdu.pojo.Students;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class blogInfoService {

    @Autowired
    private BlogInfoDao blogInfoDao;

    public List getblog(String sid) {
        return blogInfoDao.getblogInfoList(sid);
    }
     public List getAllblog() {
        return blogInfoDao.getAllblog();
    }
    public List getblogByTypeAndMajor(String type, String majors) {
        return blogInfoDao.getblogByTypeAndMajor(type, majors);
    }

    public void deleteblogInfo(int pid) {
        blogInfoDao.delete(pid);
    }

    public void addnewblog(Blog p) {
        blogInfoDao.addnewblog(p);
    }

 public List getblogdetail(String title) {
        return blogInfoDao.getblogInfo(title);
    }
    public List getNewblog() {
        return blogInfoDao.getNewblog();

    }



}

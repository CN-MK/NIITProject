/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.dao.FansDao;
import com.qdu.pojo.FansStatus;
import com.qdu.pojo.Students;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ApplyService {

    @Autowired
    private FansDao applyDao;

    public List getApplyList() {
        return applyDao.getFansList();
    }

    public List getFansBySid(String sid) {
        return applyDao.getFansByid(sid);
    }

    public List getCareBySid(String sid) {
        return applyDao.getCareBySid(sid);
    }
    

    public void updateApply(FansStatus a) {
        applyDao.updateApply(a);

    }
    public FansStatus addApply(String PID,String SID) {
       return  applyDao.apply(PID,SID);
    }

}

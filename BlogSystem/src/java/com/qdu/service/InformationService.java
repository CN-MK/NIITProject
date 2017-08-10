/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.dao.InfoDao;
import com.qdu.pojo.Information;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class InformationService {
    @Autowired
    private InfoDao resumeDao ;
    public Information getInformationBySid(String sid){
        return resumeDao.getInfoBySid(sid);
    }
     public void saveInformation(Information Information){
      resumeDao.saveInformation(Information);
    }
    
}

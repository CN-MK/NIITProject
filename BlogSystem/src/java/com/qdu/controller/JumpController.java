/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.dao.AdminDao;
import com.qdu.dao.StudentDao;
import com.qdu.pojo.Admin;
import com.qdu.pojo.Students;
import com.qdu.service.AdminService;
import com.qdu.service.blogInfoService;
import com.qdu.service.StudentService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "/jump")
public class JumpController {

    @Autowired //默认按照byType自动装配
    private StudentService studentService;
    @Autowired //默认按照byType自动装配
    private AdminService adminService;
    @Autowired
    private blogInfoService blogInfoService;

    @RequestMapping(value="/toaddnewblog.do")
    public String toaddnewblog(HttpServletRequest request , HttpServletResponse response, ModelMap map)throws IOException{
        //判断当前session里有无用户信息 一是student  二是 admin  
        //如果student 则return “userloginsuccess”
        //如果是admin 则。。。。adminloginsuccesss
        if (request.getSession().getAttribute("sid") == null && request.getSession().getAttribute("aid") == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('您当前为未登录状态请登录！！');" + "document.location.href='../jump/goIndex.do';"+ "</script>");
            out.close();
            return null;

        } else{
            if (request.getSession().getAttribute("sid") != null && request.getSession().getAttribute("aid") == null) {
              Students s= studentService.getStundent((String) request.getSession().getAttribute("sid"));
                map.addAttribute("student", s);
                return "addnewblog";
           
        } else {
            Admin a =adminService.getAdmin((int) request.getSession().getAttribute("aid"));
            map.addAttribute("admin", a);
            return "addnewblog";
             }
    }
    }
    @RequestMapping(value = "/gopersonalcenter.do")
    public String gopersonalcenter(HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException {
        //判断当前session里有无用户信息 一是student  二是 admin  
        //如果student 则return “userloginsuccess”
        //如果是admin 则。。。。adminloginsuccesss
        if (request.getSession().getAttribute("sid") == null && request.getSession().getAttribute("aid") == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('您当前为未登录状态请登录！！');" + "document.location.href='../jump/goIndex.do';"+ "</script>");
            out.close();
            return null;

        } else{
            if (request.getSession().getAttribute("sid") != null && request.getSession().getAttribute("aid") == null) {
              Students s= studentService.getStundent((String) request.getSession().getAttribute("sid"));
                map.addAttribute("student", s);
                return "userloginSuccess";
           
        } else {
            Admin a =adminService.getAdmin((int) request.getSession().getAttribute("aid"));
            map.addAttribute("admin", a);
            return "adloginsuccess";
             }
    }
}
     @RequestMapping(value = "/goIndex.do")
    public String goIndex(ModelMap map) {
        List list=blogInfoService.getAllblog();
        List listNew=blogInfoService.getNewblog();
          map.addAttribute("list",list);
          map.addAttribute("listnew",listNew);
        return "home";
    }
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.Blog;
import com.qdu.pojo.Students;
import com.qdu.service.blogInfoService;
import com.qdu.service.StudentService;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "/blog")
public class BlogInfoController {

    @Autowired //默认按照byType自动装配
    private blogInfoService blogInfoService ;
    @RequestMapping(value = "/findblog.do")
    public String findblog(ModelMap map) {
        List list= blogInfoService.getAllblog();
        map.addAttribute("list",list);
        //循环判断列表中满足查找条件的职位信息对象建立一个新的列表存储这些对象再把他放到map中去带着给页面
        return "viewallblog";  
    }
  
     @RequestMapping( method = RequestMethod.GET,value="/deleteInfo.do")
    public String deleteblogInfo(int pid,String sid,ModelMap map){
        blogInfoService.deleteblogInfo(pid);
        map.addAttribute("list",blogInfoService.getblog(sid));
        return "viewblog";
    }
       @RequestMapping(value="/findblogByTypeAndMajor.do")
    public String findjobsByTypeAndMajor(HttpServletRequest request,ModelMap map){
        String type=request.getParameter("type");
        String major=request.getParameter("majors");
        List list=blogInfoService.getblogByTypeAndMajor(type, major);
        map.addAttribute("list",blogInfoService.getblog("SID"));
        map.addAttribute("listResult",list);
        return "viewblog";
    }
  
      @RequestMapping(value = "/addnewblog.do")
    public String addnewblog(Blog p,ModelMap map) {
        p.setDate(new Date());
         blogInfoService.addnewblog(p);
         List list=blogInfoService.getblog(p.getSid());
        map.addAttribute("list",list);
        //循环判断列表中满足查找条件的信息对象建立一个新的列表存储这些对象再把他放到map中去带着给页面
        return "viewblog";
    }
    
    @RequestMapping(value = "/checkblog.do")
    public String checkblog(@RequestParam("sid") String sid,ModelMap map) {
         List list=blogInfoService.getblog(sid);
        map.addAttribute("list",list);
        //循环判断列表中满足查找条件的信息对象建立一个新的列表存储这些对象再把他放到map中去带着给页面
        return "viewblog";
    }
    
      @RequestMapping(value = "/toviewinfo.do")
    public String toviewinfo(@RequestParam("blogtitle") String title,ModelMap map) {        
        List p=blogInfoService.getblogdetail(title);
         map.addAttribute("detail",p);
        //循环判断列表中满足查找条件的信息对象建立一个新的列表存储这些对象再把他放到map中去带着给页面
        return "bloginfo";
    }


}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.Admin;
import com.qdu.pojo.FansStatus;
import com.qdu.pojo.Blog;
import com.qdu.pojo.Information;
import com.qdu.pojo.Students;
import com.qdu.service.AdminService;
import com.qdu.service.ApplyService;

import com.qdu.service.blogInfoService;
import com.qdu.service.InformationService;
import com.qdu.service.StudentService;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "/ads")
public class AdminController {

    @Autowired //默认按照byType自动装配
    private AdminService adminService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private ApplyService applyService;
     @Autowired
    private InformationService InfoService;
    @Autowired
    private blogInfoService blogInfoService;
    @RequestMapping(value = "/login.do")
    public String validateLogin(HttpServletRequest request, int aid, String apwd, ModelMap map) {
       if (request.getSession().getAttribute("sid") == null && request.getSession().getAttribute("aid") == null) {
            Admin a = adminService.validateAdmin(aid, apwd);
            if (a== null) {
                return "fail";
            } else {
                request.getSession().setAttribute("aid",aid);
                request.getSession().setAttribute("apwd", apwd);
                map.addAttribute("admin", a);
                return "adloginsuccess";
            }
        } else {
            request.getSession().invalidate();//删除会话里面所有的信息
            Admin a = adminService.validateAdmin(aid, apwd);
            if (a == null) {
                return "fail";
            } else {
                request.getSession().setAttribute("aid", aid);
                request.getSession().setAttribute("apwd", apwd);
                map.addAttribute("admin", a);
                return "adloginsuccess";
            }
        }
    }

    @RequestMapping(value = "/viewusers.do")//查看用户
    public String viewsers(ModelMap map) {
        List list = studentService.getStudentList();
        if (list == null) {
            return "fail";
        } else {
            map.addAttribute("studentlist", list);
            return "viewusers";
        }
    }
      @RequestMapping(value = "/viewInfo.do",method =RequestMethod.GET) //查看资料
    public String viewinfo(@RequestParam("sid") String sid,ModelMap map){
            Information r=InfoService.getInformationBySid(sid);
            map.addAttribute("info",r);
            return "viewinfo";
    }
    
   
      @RequestMapping(value = "/careit.do",method =RequestMethod.GET) //关注
    public String careit(HttpServletRequest request,String sid , String pid,ModelMap map){
            FansStatus a=applyService.addApply(sid,pid);
            a.setAstatus(1);
            applyService.updateApply(a);
            List list=applyService.getApplyList();
             map.addAttribute("applylist",list);
             return "viewdelivery";
    }
      @RequestMapping(value = "/refuseit.do",method =RequestMethod.GET)
    public String refuseit(HttpServletRequest request,String sid , String pid,ModelMap map){
             FansStatus a=applyService.addApply(sid,pid);
            a.setAstatus(2);
            applyService.updateApply(a);
            List list=applyService.getApplyList();
             map.addAttribute("applylist",list);
             return "viewdelivery";
    }
        @RequestMapping(value = "/viewdeliveryBySid.do",method =RequestMethod.GET)
    public String viewdeliveryBySid(@RequestParam("sid") String sid,ModelMap map){
        List list=applyService.getCareBySid(sid);
             map.addAttribute("applylist",list);
             return "viewdelivery";
    }
    @RequestMapping(value = "/viewdelivery.do")
    public String viewdelivery(ModelMap map) {
        List list=applyService.getApplyList();
//          Iterator<ApplyStatus> it=list.iterator();
//            while(it.hasNext()) {
//               if(it.next().getAstatus()==0){
//               it.next().setAstatus(0);
//               }
//                       }
        map.addAttribute("applylist",list);
        return "viewdelivery";
    }

    @RequestMapping(value = "/addnewjobs.do",method=RequestMethod.POST)
    public String addnewblog(HttpServletRequest request,HttpServletResponse response, ModelMap map) throws IOException, ParseException {
       String pid=request.getParameter("blogtitle");
       if(blogInfoService.getblog(pid)!=null){
           response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('此博文已存在！！');"  + "</script>");
            out.close();
       }
       else{
       String blogName=request.getParameter("blogtitle");
        String lmajors=request.getParameter("lmajors");
         String blogDesc=request.getParameter("blogDesc");
       String type=request.getParameter("type");

             String closingDate=request.getParameter("closingDate");
             DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd");
             Date date = fmt.parse(closingDate);
             Blog p=new Blog();
            blogInfoService.addnewblog(p);
        response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('成功添加博文！！');"  + "</script>");
            out.close();
    }
       List list=blogInfoService.getblog(pid);
         map.addAttribute("list",list);
        return "addnewblog";
    }
        @RequestMapping(value = "/toaddnewblog.do")
    public String toaddnewblog(HttpServletRequest request,HttpServletResponse response,ModelMap map) throws IOException {
           if (request.getSession().getAttribute("aid") == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('您不是管理员无权限！！');" + "document.location.href='../jump/goIndex.do';" + "</script>");
            out.close();
            return null;
        } else {
           List list=blogInfoService.getblog("SID");
         map.addAttribute("list",list);
        return "addnewblog";
        }
       
    }
    @RequestMapping(value = "/ad_register.do")
    public String ad_register(HttpServletResponse  response,HttpServletRequest request,ModelMap map) throws IOException {
       String aname= request.getParameter("aname");
       String apwd=request.getParameter("apwd");
      if( adminService.adregister(aname,apwd)==0){
        response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('注册失败！！');" +"</script>");
            out.close();
      
      }
      else{
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('注册成功！！');" +"</script>");
            out.close();
      }
      
        return "ad_register";
    }
     @RequestMapping(value = "/toad_register.do")
    public String toad_register(ModelMap map) {
        return "ad_register";
    }

}

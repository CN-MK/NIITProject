package com.qdu.controller;

//SpringMVC处理请求
import com.mchange.io.FileUtils;
import com.qdu.pojo.Blog;
import com.qdu.pojo.Information;
import com.qdu.pojo.FansStatus;
import com.qdu.pojo.Students;
import com.qdu.service.ApplyService;
import com.qdu.service.blogInfoService;
import com.qdu.service.InformationService;
import com.qdu.service.StudentService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
//@Component(组件),@Service,@Repository(Dao类),@Controller
//请求->DispatcherServlet->控制器->Service层->Dao层->数据库

@Controller
@RequestMapping(value = "/student")
public class StudentController {

    @Autowired //默认按照byType自动装配
    private StudentService studentService;
    @Autowired //默认按照byType自动装配
    private ApplyService applyService;
    @Autowired
    private blogInfoService positionInfoService;
    @Autowired
    private InformationService InfoService;
   

    @RequestMapping(value = "/login.do")
    public String validateLogin(HttpServletRequest request, HttpServletResponse response, String sid, String spwd, ModelMap map) throws IOException {
            if (request.getSession().getAttribute("sid") == null && request.getSession().getAttribute("aid") == null) {
                Students s = studentService.validateStudent(sid, spwd);
                if (s == null) {
                    return "fail";
                } else {
                    request.getSession().setAttribute("sid", sid);
                    request.getSession().setAttribute("spwd", spwd);
                    map.addAttribute("student", s);
                    return "userloginSuccess";
                }
            } else {
                request.getSession().invalidate();//删除会话里面所有的信息
                Students s = studentService.validateStudent(sid, spwd);
                if (s == null) {
                    return "fail";
                } else {
                    request.getSession().setAttribute("sid", sid);
                    request.getSession().setAttribute("spwd", spwd);
                    map.addAttribute("student", s);
                    return "userloginSuccess";
                }
            }
     
    }
 @RequestMapping(value = "/passit.do",method =RequestMethod.GET)
    public String passit(HttpServletRequest request, HttpServletResponse response, String sid, String pid,String status, ModelMap map) throws IOException{
            return null;
    }
    
    
    @RequestMapping(value = "/tochangepwd.do")
    public String tochangepwd(ModelMap map) {
        return "changepwd";
    }

    @RequestMapping(value = "/changepwd.do", method = RequestMethod.POST)
    public String changepwd(HttpServletResponse response, HttpSession session, HttpServletRequest request, String pwd1, String pwd2, String oldpwd, ModelMap map)
            throws IOException {
//        System.out.println("new pwd:"+pwd1);
        if (pwd1 == null || pwd2 == null) {
            return null;
        }
        if (oldpwd.equals(request.getSession().getAttribute("spwd"))) {
            String sid = (String) request.getSession().getAttribute("sid");
            Students s = studentService.getStundent(sid);
            s.setSpwd(pwd1);
            studentService.update(s);
            session.invalidate();
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('修改密码成功请重新登录！！');" + "document.location.href='../jump/goIndex.do';" + "</script>");
            out.close();
        } else {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('修改失败原密码错误！！');" + "document.location.href='../student/tochangepwd.do';" + "</script>");
            out.close();
        }
        return tochangepwd(map);

    }

    @RequestMapping(value = "/resume_setting.do")
    public String resume_setting(HttpSession session, ModelMap map) {
        Information resume = InfoService.getInformationBySid((String) session.getAttribute("sid"));
        map.addAttribute("r", resume);
        return "resume_setting";
    }

    @RequestMapping(value = "/employment.do")
    public String employment(ModelMap map) {
        return "employment";
    }

    @RequestMapping(value = "/viewschedule.do")
    public String schedule(HttpSession session, ModelMap map) {
        String sid = (String) session.getAttribute("sid");
        List list = applyService.getCareBySid(sid);
        map.addAttribute("applylist", list);
        return "schedule";
    }

    @RequestMapping(value = "/doit.do", method = RequestMethod.GET)
    public String doit(HttpServletResponse response, @RequestParam("pid") String pid, HttpSession session, ModelMap map) throws IOException, ParseException {
        String sid = (String) session.getAttribute("sid");
        if (sid == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('您当前身份信息不是学生！！');" + "</script>");
            out.close();
        } else {
            List p = positionInfoService.getblog("SID");
            Students s = studentService.getStundent(sid);
            Date now = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
            String time = dateFormat.format(now);
                       
           
            if ( true) {
                response.setContentType("text/html; charset=UTF-8");
                PrintWriter out = response.getWriter();
                out.print("<script>" + "alert('成功！！');" + "</script>");
                out.close();
            } else {
                response.setContentType("text/html; charset=UTF-8");
                PrintWriter out = response.getWriter();
                out.print("<script>" + "alert('发布失败！！');" + "</script>");
                out.close();
            }

        }
        return "jobinfo";
    }

    @RequestMapping(value = "/saveResume.do", method = RequestMethod.POST)
    public String saveResume(HttpSession session, HttpServletRequest request, ModelMap map) {
        String sid = request.getParameter("sid");
        Students s = studentService.getStundent(sid);
        String rid = request.getParameter("rid");
        String skill = request.getParameter("skill");
        String photo = request.getParameter("photo");
        String workExp = request.getParameter("workExp");
        Information r = InfoService.getInformationBySid(sid);
        r.setPhoto(photo);
        r.setSkill(skill);
        r.setWorkExp(workExp);
        InfoService.saveInformation(r);
        Information resume = InfoService.getInformationBySid(sid);
        map.addAttribute("r", resume);
        map.addAttribute("message", "修改成功");
        return "resume_setting";
    }

    @RequestMapping(value = "/upload.do", method = RequestMethod.POST)
    public String uploadimg(ModelMap map,HttpServletRequest request,@RequestParam(value = "file") MultipartFile file) throws IOException {
        if (!file.isEmpty()) {
            FileOutputStream fos = null;
            try {
                byte[] bytes = file.getBytes();
                  String contentType=file.getContentType();  
                //获得文件后缀名称  
                String imageName=contentType.substring(contentType.indexOf("/")+1);  
                String imgpath=request.getSession().getServletContext().getRealPath("/")+ "/web/img/";
                fos = new FileOutputStream(imgpath);
                fos.write(bytes);
                String photo=file.getOriginalFilename()+imageName;
                map.addAttribute("photo",photo);
            } catch (IOException e) {
                e.printStackTrace();

            } finally {
                try {
                    if(fos!=null){
                        fos.close();
                    }

                } catch (IOException e) {

                    e.printStackTrace();

                }

            }
//          String pathRoot = request.getSession().getServletContext().getRealPath("");
//           String path="";  
//           if(!file.isEmpty()){  
//            //生成uuid作为文件名称  
//            String uuid = UUID.randomUUID().toString().replaceAll("-","");  
//            //获得文件类型（可以判断如果不是图片，禁止上传）  
//            String contentType=file.getContentType();  
//            //获得文件后缀名称  
//            String imageName=contentType.substring(contentType.indexOf("/")+1);  
//            path="/img/"+uuid+"."+imageName;  
//            file.transferTo(new File(pathRoot+path));  
//        }  
//           System.out.println(path);  
//                 request.setAttribute("photo", path);  
//             return "resume_setting";  
        }
        return "resume_setting";
    }
     @RequestMapping(value = "/register.do", method = RequestMethod.GET)
    public String register(Students newStudent, ModelMap map) {
        if (studentService.registerStudent(newStudent)) {
            map.addAttribute("msg", newStudent.getSid());
       } else {
           map.addAttribute("msg", "注册失败，已经有此学生！");
       }
        return "registerresult";
    }
    
    
    }


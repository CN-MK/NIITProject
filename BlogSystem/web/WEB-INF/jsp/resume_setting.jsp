<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- BOOTSTRAP CORE STYLE CSS -->
        <link href="../css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLE CSS -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLE CSS -->
        <link href="../css/style.css" rel="stylesheet" />    
        <!-- CORE JQUERY  -->
        <script src="../plugins/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS  -->
        <script src="../plugins/bootstrap.js"></script>
        <!-- CUSTOM SCRIPTS  -->
        <script src="../js/custom.js"></script>        
    </head>
    <body>
        <section>
        <!--/.NAVBAR导航-->
        <div class="navbar-inverse navbar-fixed-top" >
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../jump/goIndex.do">BlOG</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="../jump/goIndex.do">首页</a></li> 
                        <li><a href="../blog/findblog.do">查看博文</a></li> 
                        <li><a href="../jump/toaddnewblog.do">发布博文</a></li>
                        <li><a href="../contact.html">联系我们</a></li>  
                        <li><a href="../jump/gopersonalcenter.do">个人中心</a></li>
                        <li><a href="../register.jsp">注册</a></li>
                        </li> 
                    </ul>
                </div>
            </div>
        </div>
    </section>
        <div class="row">
            <aside style="margin-left: 200px" id="column-left">
                <style>
                    span{
                        margin-left:-200px;
                    }
                    input{
                        margin-top: -400px;
                    }
                    .list-group a.dir {
                        height:35px;
                        line-height:35px;
                        text-align:center;
                        font-weight:bold;
                    }
                </style>
                <div class="list-group">
                    <a href="javascript:void" class="list-group-item dir" style="height:50px;line-height:50px;">个人设置</a>
                    <a href="javascript:void" class="list-group-item">个人信息</a> 
                    <a href="../student/tochangepwd.do"  class="list-group-item">修改密码</a>
                    <a href="javascript:void" class="list-group-item dir">简历管理</a>
                    <a href="../student/resume_setting.do" class="list-group-item">设置</a>
                    <a href="javascript:void" class="list-group-item dir">通知</a>
                    <a href="../student/viewschedule.do" class="list-group-item">进度查阅</a>
                </div>
            </aside>
            <div style="margin-left: 100px" id="content" class="col-sm-12"> 
                <!--                <ul class="breadcrumb">
                                    <li><a href="#"><i class="fa fa-home"></i></a></li>
                                    <li><a href="#">我的帐户</a></li>
                                    <li><a href="#">个人认证</a></li>
                                    </ul>-->
                    <div style="font-family: KaiTi">
                        <div style="background-color: #cccccc; width: 80%;margin: 0 auto">
                            <h2 style="text-align: center;">个人资料</h2>
                        </div>  

                        <div style=" margin-left: 100px;width: 100%;height: 200px;">
                            <input name="rid" value="${r.rid}"  style="display: none"/>
                            <input name="sid" value="${r.students.sid}"  style="display: none"/>
                            <div style="width: 33%;height: 100%;  float: left">
                                <div style="margin-left: 100px;">
                                    <span>姓名&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span><input readonly="true" name="sname" title="用户名称必须是3-10位字母"
                                                                                        validateRegex pattern="[a-zA-Z]{3,10}" required="true" type="text" value="${r.students.sname}" style="border: none;font-family:KaiTi; font-size: 16px" ></input>
                                    <br><br>
                                    <span>性别&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span><input readonly="true" name="sgender" required="true" type="text" value="${r.students.sgender}" style="border: none;font-family:KaiTi;font-size: 16px " ></input>
                                    <br><br>
                                    <span>电话&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span><input readonly="true" name="smobile"  validateRegex pattern="1[3578][0-9]{9}" required="true"type="text" value="${r.students.smobile}" style="border: none;font-family:KaiTi ;font-size: 16px" ></input>
                                    <br><br>
                                    <span> 专业&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span><input readonly="true" name="smajor" required="true" type="text" value="${r.students.smajor}" style="border: none;font-family:KaiTi;font-size: 16px " ></input>

                                </div>
                            </div>

                            <div style="width: 33%;height: 100%; float: left">
                                <div style="margin-left: 100px;">
                                    <span>技能&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span><input name="skill" type="text" value="${r.skill}" style="border: none;font-family:KaiTi;font-size: 16px " ></input>
                                </div>
                            </div>
                            <div style="background-color:white; margin-left: -150px;width: 34%;height: 100%; float: left ">
                                照片<img name="photo" src="../img/${photo}"/>
                                <!--<img  src=""/>-->
                            </div>
                            <form action="upload.do"  method="post" enctype="multipart/form-data" id="UpLoad">
                                <div>
                                    <input type="file" id="upFile" name="file">
                                </div>
                                <div>
                                    <input type="submit" value="上传头像" id="uplod">
                                </div>
                            </form>
                        </div>
                        <br/><br/>
                        <hr color="black" size="2" />
                        <div style="background-color: white; width:100%;height: 200px ">
                            <h2 style="background-color: #cccccc">经历</h2>
                            <textarea  name="workExp"style="height: 80%;width: 90%; border: none">${r.Exp}</textarea>
                        </div>

                        <div style=" width:100%;height: 200px ">
                            <h2 style="background-color: #cccccc">自我评价</h2>
                            <textarea name="" style="height: 80%;width: 90%; border: none">自我评价</textarea>

                        </div>
                        <br><br>
                        <div style="text-align: center" >
                            <input type="submit" value="确认修改" style=" background-color:gray;
                                   border: none;
                                   color: white;
                                   padding: 15px 32px;
                                   text-align: center;
                                   text-decoration: none;
                                   display: inline-block;
                                   font-size: 12px;"/>
                        </div>
                    </div>
                    <span>${message}</span>

            </div>
        </div>
    </body>
</html>

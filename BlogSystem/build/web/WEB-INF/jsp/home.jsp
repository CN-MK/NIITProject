<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

        <!--[if IE]>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
            <![endif]-->

        <!-- BOOTSTRAP CORE STYLE CSS -->
        <link href="../css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLE CSS -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLE CSS -->
        <link href="../css/style.css" rel="stylesheet" />    
        <script>
            function showsub(li) {
                var submenu = li.getElementsByTagName("ul")[0];
                submenu.style.display = "block";
            }
            function hidesub(li) {
                var submenu = li.getElementsByTagName("ul")[0];
                submenu.style.display = "none";
            }
            function oBlur_1() {
                var a = document.getElementById("username").value;
                if (!a) { //用户框value值为空
                    document.getElementById("remind_1").innerHTML = "请输入用户名";
                    document.getElementById("change_margin_1").style.marginBottom = 1 + "px";
                } else { //用户框value值不为空
                    document.getElementById("remind_1").innerHTML = "";
                    document.getElementById("change_margin_1").style.marginBottom = 19 + "px";
                }
            }

            //密码框失去焦点后验证value值
            function  oBlur2() {
                var b = document.getElementById("password").value;
                if (!b) { //密码框value值为空
                    document.getElementById("remind_2").innerHTML = "请输入密码";
                    document.getElementById("change_margin_2").style.marginBottom = 1 + "px";
                    document.getElementById("change_margin_3").style.marginTop = 2 + "px";
                } else { //密码框value值不为空
                    document.getElementById("remind_2").innerHTML = "";
                    document.getElementById("change_margin_2").style.marginBottom = 19 + "px";
                    document.getElementById("change_margin_3").style.marginTop = 19 + "px";
                }
            }

            //用户框获得焦点的隐藏提醒
            function oFocus_1() {
                var a = document.getElementById("username").value;
                var b = document.getElementById("password").value;
                document.getElementById("remind_1").innerHTML = "";
                document.getElementById("change_margin_1").style.marginBottom = 19 + "px";
            }

            //密码框获得焦点的隐藏提醒
            function oFocus_2() {
                var a = document.getElementById("username").value;
                var b = document.getElementById("password").value;
                document.getElementById("remind_2").innerHTML = "";
                document.getElementById("change_margin_2").style.marginBottom = 19 + "px";
                document.getElementById("change_margin_3").style.marginTop = 19 + "px";
            }

            //若输入框为空，阻止表单的提交
            function submitTest() {
                var a = document.getElementById("username").value;
                var b = document.getElementById("password").value;
                if (!a && !b) { //用户框value值和密码框value值都为空
                    document.getElementById("remind_1").innerHTML = "请输入用户名！";
                    document.getElementById("change_margin_1").style.marginBottom = 1 + "px";
                    document.getElementById("remind_2").innerHTML = "请输入密码！";
                    document.getElementById("change_margin_2").style.marginBottom = 1 + "px";
                    document.getElementById("change_margin_3").style.marginTop = 2 + "px";
                    return false; //只有返回true表单才会提交
                } else if (!a) { //用户框value值为空
                    document.getElementById("remind_1").innerHTML = "请输入用户名！";
                    document.getElementById("change_margin_1").style.marginBottom = 1 + "px";
                    return false;
                } else if (!b) { //密码框value值为空
                    document.getElementById("remind_2").innerHTML = "请输入密码！";
                    document.getElementById("change_margin_2").style.marginBottom = 1 + "px";
                    document.getElementById("change_margin_3").style.marginTop = 2 + "px";
                    return false;
                }
            }
            function oBlur_3() {
                var a = document.getElementById("adusername").value;
                if (!a) { //用户框value值为空
                    document.getElementById("remind_3").innerHTML = "请输入用户名";
                    document.getElementById("change_margin_4").style.marginBottom = 1 + "px";
                } else { //用户框value值不为空
                    document.getElementById("remind_3").innerHTML = "";
                    document.getElementById("change_margin_4").style.marginBottom = 19 + "px";
                }
            }

            //密码框失去焦点后验证value值
            function  oBlur4() {
                var b = document.getElementById("adpassword").value;
                if (!b) { //密码框value值为空
                    document.getElementById("remind_4").innerHTML = "请输入密码";
                    document.getElementById("change_margin_5").style.marginBottom = 1 + "px";
                    document.getElementById("change_margin_6").style.marginTop = 2 + "px";
                } else { //密码框value值不为空
                    document.getElementById("remind_4").innerHTML = "";
                    document.getElementById("change_margin_5").style.marginBottom = 19 + "px";
                    document.getElementById("change_margin_6").style.marginTop = 19 + "px";
                }
            }

            //用户框获得焦点的隐藏提醒
            function oFocus_3() {
                var a = document.getElementById("adusername").value;
                var b = document.getElementById("adpassword").value;
                document.getElementById("remind_3").innerHTML = "";
                document.getElementById("change_margin_4").style.marginBottom = 19 + "px";
            }

            //密码框获得焦点的隐藏提醒
            function oFocus_4() {
                var a = document.getElementById("adusername").value;
                var b = document.getElementById("adpassword").value;
                document.getElementById("remind_4").innerHTML = "";
                document.getElementById("change_margin_5").style.marginBottom = 19 + "px";
                document.getElementById("change_margin_6").style.marginTop = 19 + "px";
            }

            //若输入框为空，阻止表单的提交
            function submitTest() {
                var a = document.getElementById("username").value;
                var b = document.getElementById("password").value;
                if (!a && !b) { //用户框value值和密码框value值都为空
                    document.getElementById("remind_1").innerHTML = "请输入用户名！";
                    document.getElementById("change_margin_1").style.marginBottom = 1 + "px";
                    document.getElementById("remind_2").innerHTML = "请输入密码！";
                    document.getElementById("change_margin_2").style.marginBottom = 1 + "px";
                    document.getElementById("change_margin_3").style.marginTop = 2 + "px";
                    return false; //只有返回true表单才会提交
                } else if (!a) { //用户框value值为空
                    document.getElementById("remind_1").innerHTML = "请输入用户名！";
                    document.getElementById("change_margin_1").style.marginBottom = 1 + "px";
                    return false;
                } else if (!b) { //密码框value值为空
                    document.getElementById("remind_2").innerHTML = "请输入密码！";
                    document.getElementById("change_margin_2").style.marginBottom = 1 + "px";
                    document.getElementById("change_margin_3").style.marginTop = 2 + "px";
                    return false;
                }
            }

            $(document).ready(function (e) {
                document.getElementById('form-admins').style.display = 'none';
            });
            function btn1() {
                document.getElementById('form-students').style.display = 'block';
                document.getElementById('form-admins').style.display = 'none';
            }
            function btn2() {
                document.getElementById('form-admins').style.display = 'block';
                document.getElementById('form-students').style.display = 'none';
            }

        </script>
    </head>
    <body> 
        <!--/.NAVBAR导航-->
        <div class="navbar navbar-inverse navbar-fixed-top" >
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

        <!--/滚动SHOW-->
        <section id="home" class="text-center">
            <div id="carousel-example" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="../img/1.jpg" alt="" />
                        <div class="carousel-caption" >
                            <h4 class="back-light">Welcome</h4>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../img/2.jpg" alt="" />
                        <div class="carousel-caption ">
                            <h4 class="back-light">Welcome</h4>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../img/3.jpg" alt="" />
                        <div class="carousel-caption ">
                            <h4 class="back-light">Welcome</h4>
                        </div>
                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>
            </div>
        </section>

        <div class="container" >
            <div class="row text-center" >
                <div class="col-md-12 col-sm-4" >
                    <div class="pad-row text-center   ">
                        <!--搜索表单部分-->
                        <form id="findjobsform"  style="width: 1170px; height: 50px;" action="../blog/findblogByTypeAndMajor.do"  class="form-group">
                            <div class="col-md-3 col-sm-3">
                                <select name="type" id="zhuanye_id" class="form-control">
                                    <option value="研究">研究</option>
                                    <option value="应用">应用</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-sm-3">
                                <select   name="majors" id="zhuanye_id" class="form-control">
                                    <c:forEach items="${list}" var="j">
                                        <option  onclick="$('#findjobsform').submit();" value="${j.majors}">${j.majors}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <input style="color: rgb(0, 0, 0);" type="text" name="name" value="" id="job_name" class="form-control">
                            </div>
                            <div class="col-md-2 col-sm-2">
                                <input type="submit" value="搜索" class="btn btn-primary">
                            </div>
                        </form>    
                    </div>
                </div>
            </div>
        </div>



        <!--/.INTRO介绍，登录-->
        <div class="container" >
            <div class="col-md-12" >
                <div class="row text-center pad-row  ">
                    <div class="tab_container content0">
                        <div class="col-md-4 col-sm-4 ">
                            <li  style="list-style-type:none; font-size:25px" class="selected">热门博客</li>
                            <div class="text_news text-left" >
                                <c:forEach items="${list}" var="j1">
                                    <li>
                                        <a href="blog/toviewjobinfo.do?pid=${j1.blogtitle}">
                                            <span> ${j1.blogtitle}</span></a></li>
                                        </c:forEach> 
                            <a  href="blog/findblog.do"style='color: red' target="_blank">查看更多&gt;&gt;</a> 
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 ">   
                        <div class="tab_container content0">
                            <li  style="list-style-type:none; font-size:25px" class="selected" >最新工作</li>
                            <div class="text_news text-left" >
                                <c:forEach items="${listnew}" var="j1">
                                    <li><a href="blog/toviewjobinfo.do?pid=${j1.blogtitle}">
                                            <span> ${j1.blogtitle}</span></a></li>
                                        </c:forEach>  
                            <a  href="blog/findblog.do"style='color: red' target="_blank">查看更多&gt;&gt;</a>     
                            </div>
                                            
                        </div>                   
                    </div>


                    <!--登录部分end--> 
                    <div class="col-md-4 col-sm-4">          
                        <div class="content-form" >
                            <button value="我是用户"  class="btn btn-primary" onclick="btn1()" >我是用户</button>
                            &nbsp;  &nbsp;
                            <button value="我是管理员" class="btn btn-primary"  onclick="btn2()">我是管理员</button>

                            <form id="form-students" action="../student/login.do"  onsubmit=""  style="display: block;">
                                <h1 class="content-title">用户登录</h1>
                                <div id="change_margin_1">
                                    <input  name="sid" id="username"  class="user" type="text" placeholder="请输入ID" onblur="oBlur_1()" onfocus="oFocus_1()">
                                </div>
                                <!-- input的value为空时弹出提醒 -->
                                <p id="remind_1"></p>
                                <div id="change_margin_2">
                                    <input  name="spwd" id="password" class="password" type="password" placeholder="请输入密码" onblur="oBlur2()"  onfocus="oFocus_2()">
                                </div>
                                <!-- input的value为空时弹出提醒 -->
                                <p id="remind_2"></p>
                                <div id="change_margin_3">
                                    <input class="content-form-signup" type="submit" value="登录">
                                </div>  
                                <!--<div class="content-login-description">没有账户？</div>-->
                                <div><a class="content-login-link" href="../register.jsp">注册</a></div>

                            </form>

                            <form id="form-admins" method="post" action="../ads/login.do" onsubmit=""  style="display: none;">
                                <h1 class="content-title">管理员</h1>
                                <div id="change_margin_4">
                                    <input name="aid" id="adusername" class="user" type="text"  placeholder="管理员账号" onblur="oBlur_3()" onfocus="oFocus_3()">
                                </div>
                                <p id="remind_3"></p>
                                <div id="change_margin_5">
                                    <input name="apwd" id="adpassword" class="password" type="password"  placeholder="管理员密码" onblur="oBlur4()" onfocus="oFocus_4()">
                                </div>
                                <p  id="remind_4"></p>
                                <div id="change_margin_6">
                                    <input class="content-form-signup" type="submit" value="登录">
                                </div>
                            </form>
                        </div>
                    </div> 
                </div>                    
            </div>                

        </div>

        <section id="offer"  >
            <div class="container">
                <div class="row   alert alert-info" >
                    <div class="col-md-8 col-sm-8">
                        <h1> 友情合作</h1>
                    </div>
<!--                    <div class="col-md-4 col-sm-4" style="padding-top: 15px;">
                        <a href="" class=" btn btn-primary btn-lg"></a> 
                    </div>-->
                </div>
            </div>
        </section>
        <!--/.OFFFER END-->
        <section id="just-intro">
            <div class="container">
                <div class="row text-center pad-row">
                    <div class="col-md-4  col-sm-4">
                        <i class="fa fa-desktop fa-5x"></i>
                        <h4> <strong>CSDN</strong> </h4>
                        <p>
                            全球最大中文IT社区<br/>
                            最大IT技术交流平台
                        </p>
                        <a href="http://www.csdn.net/" class="btn btn-primary" >Read Details</a>    
                    </div>
                    <div class="col-md-4  col-sm-4">
                        <i class="fa fa-flask  fa-5x"></i>
                        <h4> <strong>Tencent</strong> </h4>
                        <p>
                          你的心声<br/>
                          世界的回声
                        </p>
                        <a href="http://t.qq.com/" class="btn btn-primary" >Read Details</a>
                    </div>
                    <div class="col-md-4  col-sm-4">
                        <i class="fa fa-pencil  fa-5x"></i>
                        <h4> <strong>163</strong> </h4>
                        <p>
                           新锐人文生活<br/>
                           遇见有意思的人
                        </p>
                        <a href="http://blog.163.com/" class="btn btn-primary" >Read Details</a>    
                    </div>

                </div>
            </div>
        </section>
        <!--/.JUST-INTRO END-->
        <section  class="note-sec" >

            <div class="container">
                <div class="row text-center pad-row" >
                    <div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 ">
                        <i class="fa fa-quote-left fa-3x"></i>
                        <p style="text-align: center">
                            集丰富多彩的个性化展示于一体的综合性平台<br/>
                            简易迅速发布自己心得，及时轻松有效地与他人进行交流<br/>
                            为学生打造一个笔记分享、学习心得、教学协作的分享平台<br/>
                        </p>
                    </div>
                </div>
            </div>   

        </section>
        <!--/.NOTE END-->
        <section id="clients"  >
            <div class="container">
                <div class="row text-center pad-bottom" >
                    <div class="col-md-12">
                        <img src="../img/lunbo2.png" alt="" class="img-circle" />
                    </div>  
                </div>
            </div>
        </section>
        <!--/.CLIENTS END-->
        <section id="footer-sec" >

            <div class="container">
                <div class="row  pad-bottom" >
                    <div class="col-md-4">
                        <h4> <strong>系统简介</strong> </h4>
                        <p style="text-align: center">
                            集丰富多彩的个性化展示于一体的综合性平台<br/>
                            为学生打造笔记分享、学习心得、教学协作的分享平台<br/>
                            简易迅速发布自己心得，及时轻松有效地与他人进行交流                            
                        </p>
                        <a href="../contact.html" >更多详情</a>
                    </div>
                    <div class="col-md-4">
                        <h4> <strong>社交连接</strong> </h4>
                        <p>
                            <a href="#"><i class="fa fa-facebook-square fa-3x"  ></i></a>  
                            <a href="#"><i class="fa fa-twitter-square fa-3x"  ></i></a>  
                            <a href="#"><i class="fa fa-linkedin-square fa-3x"  ></i></a>  
                            <a href="#"><i class="fa fa-google-plus-square fa-3x"  ></i></a>  
                        </p>
                    </div>
                    <div class="col-md-4">
                        <h4> <strong>联系地址</strong> </h4>
                        <p>
                            中国 ,华南区 , <br />
                            广东省 广州  <br />
                            荔湾区 荔湾路
                        </p>
                    </div>
                </div>
            </div>
        </section>  

        <!--/.FOOTER END-->
        <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
        <!-- CORE JQUERY  -->
        <script src="../plugins/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS  -->
        <script src="../plugins/bootstrap.js"></script>
        <!-- CUSTOM SCRIPTS  -->
        <script src="../js/custom.js"></script>
    </body>
</html>

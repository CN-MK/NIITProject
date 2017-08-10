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
         <script type="text/javascript">
                    function check() {
                        var p1 = document.getElementById("pwd1").value;
                        var p2 = document.getElementById("pwd2").value;
                        if (p1!== p2) {//判断两次输入的值是否一致，不一致则显示错误信息
                            alert("两次输入密码不一致，请重新输入");
                            return false;
                        }
                    }
        </script>  
    </head>

    <body>
    <section>
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
    </section>
        <div class="row">
            <aside style="margin-left: 200px" id="column-left">
                <style>
                    .list-group a.dir {
                        height:35px;
                        line-height:35px;
                        text-align:center;
                        font-weight:bold;
                    }
                </style>
                  <div class="list-group">
                  <a href="javascript:void" class="list-group-item dir" style="height:50px;line-height:50px;">个人设置</a>
                    <a href="" class="list-group-item">个人信息</a> 
                    <a href="../student/tochangepwd.do"  class="list-group-item">修改密码</a>
                    <a href="javascript:void" class="list-group-item dir">管理</a>
                    <a href="../student/resume_setting.do" class="list-group-item">设置</a>
                    <a href="javascript:void" class="list-group-item dir">通知</a>
                    <a href="../student/viewschedule.do" class="list-group-item">进度查阅</a>
                </div>
            </aside>
            <div style="margin-left: 100px" id="content" class="col-sm-9"> 
                <ul class="breadcrumb">
<!--                    <li><a href="#"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">我的帐户</a></li>
                    <li><a href="#">个人认证</a></li>-->
                </ul>
                <h1>修改密码</h1>
                <form action="../student/changepwd.do" onsubmit="return check()" method="post" enctypepost="multipart/form-data" class="form-horizontal">
                    <fieldset>          
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-name">原密码：</label>
                            <div class="col-sm-10">
                                <input required="true" type="text" name="oldpwd"  id="oldpwd" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-xuehao">新密码：</label>
                            <div class="col-sm-10">
                                <input required="true" type="password" name="pwd1" id="pwd1" class="form-control">
                            </div>
                        </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-xuehao">确认密码：</label>
                            <div class="col-sm-10">
                                <input required="true" type="password" name="pwd2"  id="pwd2" class="form-control">
                            </div>
                        </div>
                    </fieldset>
                    <div class="buttons clearfix">
                        <div class="pull-left"><input type="submit" value="提交" class="btn  btn-primary"/></div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>

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
        <!--/.NAVBAR导航-->
        <div class="navbar-inverse" >
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

        <div class="row">
            <aside style="margin-left: 100px" id="column-left">
                <style>
                    .list-group a.dir {
                        height:50px;
                        line-height:50px;
                        text-align:center;
                        font-weight:bold;
                        font-size: 30px;
                    }
                </style>
                <div class="list-group">
                    <a href="javascript:void" class="list-group-item dir" style="height:50px;line-height:50px;">个人设置</a>
                    <a href="#" class="list-group-item">个人信息</a> 
                    <a href="../student/tochangepwd.do"  class="list-group-item">修改密码</a>
                    <a href="javascript:void" class="list-group-item dir" style="height:50px;line-height:50px;">管理</a>
                    <a href="../student/resume_setting.do" class="list-group-item" >设置</a>
                    <a href="javascript:void" class="list-group-item dir">博文</a>
                    <a href="../blog/checkblog.do?sid=${student.sid}" class="list-group-item">查看博文</a>
                </div>
            </aside>
            <div style="margin-left: 100px" id="content" class="col-sm-9">
                <h1>个人信息</h1>
                <form action="http://qdu.jiuyejie.cn/index.php?route=geren/renzheng" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <fieldset>          
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-name">姓名：</label>
                            <div class="col-sm-10">
                                <p>${student.sname}</p>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-xuehao">学号：</label>
                            <div class="col-sm-10">
                               <p>${student.sid}</p>
                            </div>
                        </div>

                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-xueyuan_id">专业：</label>
                            <div class="col-sm-10">
                                <p>${student.smajor}</p>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-xuehao">手机号码：</label>
                            <div class="col-sm-10">
                                <p>${student.smobile}</p>
                            </div>
                        </div>      
                    </fieldset>
                </form>
            </div>
        </div>
    </body>
</html>

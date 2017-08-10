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
 <section id="home" class="text-center">      
    <div style="margin-left: 30%;;width: 1000 px;height: 600px; align-content: center" >
        <table border="4" >
            <tr   border="4" align="center" bgcolor="#aaccee" >
                <td >
                    题目</td>
                <td  > 
                    专业</td>
                <td  > 
                    发布时间</td>
                 <td  > 
                    操作</td>
            </tr>
            <c:forEach items="${list}" var="j">
                <tr id="${j.sid}" align="left">
                    <td>${j.blogtitle}</td>
                    <td>${j.majors}</td>
                    <td>${j.date}</td>
                        <td><a href="../blog/toviewinfo.do?blogtitle=${j.blogtitle}">查看详情</a>
                            <a href="../blog/deleteInfo.do?pid=${j.pid}&sid=${j.sid}">删除</a> </td>
                </tr>

            </c:forEach>
        </table>
    </div>
</div>
</section>
</body>
</html>

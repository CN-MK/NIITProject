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
        /.NAVBAR导航
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
 <section> 
        <div class="container">
            <div class="left" >
                <div class="div1"  style=" margin-left: 100px;margin-top: 10px;"><!--#begineditable clone="0" namechanged="0" order="2" ispublic="0" tagname="左侧栏目导航" viewid="54124" contentviewid="" contype="" stylesysid="" layout="" action="" name="左侧栏目导航"-->     
                    <div class="div2"><a href="../blog/findblog.do" target="">查看所有博客</a></div>
                    <div class="div2"><a href="../ads/toad_register.do" target="">成为管理员</a></div>
                    <div class="div2"><a href="../ads/viewusers.do" target="">查看注册用户</a></div>
                    <!--#endeditable-->
            <div style="width:800px; height: 500px; border: background 1px solid; margin-left:200px; ">
                <h2 style="margin-left: 20px;">欢迎您！</h2>
                <h3 style="margin-left: 20px;margin-top: 10px;font-weight:  bolder;">${admin.aname}</h3>
               </div>
            </div>
        </div>
 </section>
    </body>
</html>

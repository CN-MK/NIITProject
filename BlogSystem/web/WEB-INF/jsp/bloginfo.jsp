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
 <section>
           <div class="container" >
            <div class=" text-center">
                <form id="form-students" action="../blog/addnewblog.do"  onsubmit=""  style="display: block;">
                 <c:forEach items="${detail}" var="detail">
                    <div style="font-size: 25px;">  
                <div class="col-md-12 " >  
                   <input  style="display: none;" type="text" class="form-control" name="sid" value="S0001">
                    <div class="col-md-2 " >题目</div>
                    <div class="col-md-2 "></div>
                    <div class="col-md-6 ">
                        <h3>${detail.blogtitle}</h3> 
                    </div>
                </div>
                    <div class="col-md-12" >
                    <div class="col-md-2">
                    类型 
                    </div>
                    <div class="col-md-4">
                        <h3>${detail.type}</h3>
                    </div>
                    <div class="col-md-2">
                        专业
                    </div>
                    <div class="col-md-4">
                       <h3>${detail.majors}</h3>
                    </div>
                    </div>
                </div>  
                       <p>${detail.blogDesc}  </p>
                       </c:forEach>
            </form>
            </div>
           </div>        
    </section>
</body>
</html>

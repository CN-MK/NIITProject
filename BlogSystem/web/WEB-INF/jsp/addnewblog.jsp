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
<!--        CKeditor-->
        <script src="ckeditor/styles.js" type="text/javascript"></script>      
        <script src="../ckeditor/ckeditor.js" type="text/javascript"></script>
        <script type="text/javascript">
            CKEDITOR.replace('context');
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
     <section>
           <div class="container" >
            <div class=" text-center">
                <form id="form-students" action="../blog/addnewblog.do"  onsubmit=""  style="display: block;">
                <div style="font-size: 25px;">
                <div class="col-md-12 " >

                   <input  style="display: none;" type="text" class="form-control" name="sid" value="${student.sid}">
                    <div class="col-md-2 " name="blogtitle">题目</div>
                    <div class="col-md-2 "></div>
                    <div class="col-md-6 ">
                        <input name="blogtitle" style="height:30px ;font-size:20px"  class="col-md-12 " ></input> 
                    </div>
                </div>
                    <div class="col-md-12" >
                    <div class="col-md-2">
                    类型 
                    </div>
                    <div class="col-md-4">
                    <select name="type"  class="form-control">
                        <option value="研究">研究</option>
                        <option value="应用">应用</option>
                    </select>
                    </div>
                    <div class="col-md-2">
                        专业
                    </div>
                    <div class="col-md-4">
                        <input name="majors" style="height:30px;font-size:20px" ></input> 
                    </div>
                    </div>
                </div>                
                <!-- 加载编辑器的容器 -->
                 <textarea  name="blogDesc" id="context" cols="20" rows="10"  class="ckeditor"></textarea>   
                 <div id="change_margin_3">
                    <input class="btn btn-primary" style=" width: 100px;height: 50px" type="submit" value="提交">
                 </div> 
            </form>
            </div>
           </div>        
    </section>
</body>
</html>

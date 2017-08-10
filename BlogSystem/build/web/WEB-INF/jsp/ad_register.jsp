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
        <!--<span style="margin-left: -1300px;"><a style="font-size: 25px;" href="javascript:history.back();">返回</a>  </span>-->
        <div class="ercenL" style=" margin-left: 200px;margin-top: 100px;">
            <div class="sessionL1"></div>
            <div class="left">
                <div class="div1"><!--#begineditable clone="0" namechanged="0" order="2" ispublic="0" tagname="左侧栏目导航" viewid="54124" contentviewid="" contype="" stylesysid="" layout="" action="" name="左侧栏目导航"-->     
                      <div class="div2"><a href="../jobs/findjobs.do" target="">查看所有工作</a></div>
                    <div class="div2"><a href="../ads/toaddnewjobs.do" target="">发布新工作</a></div>
                    <div class="div2"><a href="../ads/toad_register.do" target="">成为管理员</a></div>
                    <div class="div2"><a href="viewusers.do" target="">查看注册用户</a></div>
                    <div class="div2"><a href="viewdelivery.do" target="">查看简历投递</a></div>
                    <!--#endeditable--></div></div>
            <div style="width:800px; height: 500px; border: red 1px solid; margin-left:200px; margin-top: -400px;">
                <br> <legend>注册管理员</legend><br><br>
                <form  class="form-horizontal" action="ad_register.do">
                          <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">用户名</label>
                        <div class="col-sm-3">
                            <input  placeholder="用户名"  required="true" class="form-control" type="text" name="aname">
                        </div>
                    </div>
                    
                             <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">密码</label>
                        <div class="col-sm-3">
                            <input  placeholder="密码"  required="true" class="form-control" type="password" name="apwd">
                        </div>
                    </div>
			       <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-9">
                            <button type="submit" class="btn btn-primary" >注册</button>
                        </div>
                    </div>
			</form>
                
                
            </div>
        </div>
    </body>
</html>

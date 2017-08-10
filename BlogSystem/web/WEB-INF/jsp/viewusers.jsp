<%-- 
    Document   : adloginsuccess
    Created on : 2017-6-8, 21:24:03
    Author     : Administrator
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://java.sun.com/jsf/html" 
      xmlns:f="http://java.sun.com/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="../css/Footerstyle.css"/>
        <link rel="stylesheet" href="../css/bootstrap.min.css"/>
        <link href="../css/slide2.css" rel="stylesheet" type="text/css"/>
        <link  rel="stylesheet" href="../css/Topcss.css"/>
        <link rel="stylesheet" href="../css/Footerstyle.css"/>
    </head>
    <body>
        <nav style="background-color: #0b6fa2;height:100px; width: 100%;" >
            <ul class="nav nav-pills" role="tablist">
              <li style="margin-left: 200px;" class="active">
                    <a href="../jump/goIndex.do">首页</a></li> 
                <li><a href="jobs/findblog.do">查看博文</a></li> 
                <li><a href="ads/toaddnewblog.do">发布博文</a></li> 
           
                <li id="logintop">
                    <a  style=" font-size: 18px;background: #00A2CA; margin-left: 400px; color: white;" href="../jump/gopersonalcenter.do">
                        个人中心/</a>
                    <!--                    <ul style="list-style: circle;"> 
                                            <li><a href="#">管理员</a></li> 
                                            <li><a href="#">用户</a></li> 
                                        </ul> -->
                </li> 

                <li> <a  style="margin-left: -20px;background:#00A2CA;font-size: 18px;color:white;" href="../register.jsp">注册</a></li>
            </ul> 
        </nav>
        <span style="margin-left: -1300px;"><a style="font-size: 25px;" href="javascript:history.back();">返回</a>  </span>
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
            <div style="width:900px; height:100%;  margin-left:210px; margin-top: -400px;">
                 <%-- <sql:setDataSource  driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                                    url="jdbc:sqlserver://localhost:1433;databaseName=NIIT"
                                    user="sa"
                                    password="niit"
                                    var="ds"
                                    scope="session"/>        
                <sql:query dataSource="${ds}" var="rs" scope="session">
                    select*from Students,Resume
                </sql:query>
                </sql>--%>
                 
                <h3 style="margin-bottom: 20PX;margin-top: -20PX; margin-left: -36PX;">全部用户信息</h3>
                <table border="1" style="width: 900px;">
                    <tr style="width:900px; height:50px;">
                         <td>ID</td>
                        <td>姓名</td>
                        <td>性别</td>
                        <td>专业</td>
                        <td>联系方式</td>
                        <td>用户状态</td>
                        <td>操作</td>
                        <td>查看简历</td>
                        <td>查看简历投递</td>
                    </tr>
                    <c:forEach items="${studentlist}" var="s">
                        <tr style="height: 60px; width: 900px;">
                             <td>${s.sid}</td>
                            <td>${s.sname}</td>
                            <td>${s.sgender}</td>
                            <td>${s.smajor}</td>
                            <td>${s.smobile}</td>
                            <!--<td>${s.status}</td>-->
                             <td><c:choose>
                                <c:when test="${s.status==0}">
                                   等待激活
                                </c:when>
                                <c:when test="${s.status==1}">
                                   已激活
                                </c:when>
                            </c:choose></td>
                            <td><a href="passit.do?sid=${s.sid}">激活</a></td>
                            <td><a href="viewresume.do?sid=${s.sid}">查看个人简历</a></td>
                            <td><a href="viewdeliveryBySid.do?sid=${s.sid}">查看简历投递</a></td>
                        </tr>
                    </c:forEach>
                </table>


                <%--<c:if var="#{}==男">--%>

                <!--                <div style="width: 180px; height: 180px; border: 1px red solid;">
                                <img src="img/男.jpg" style="margin-left: -95px;" width="60px;">
                                <ul style="margin-left: 60px;margin-top: -50px;">
                                    <li>马国才</li>
                                        <li>男</li>
                                        <li>青岛大学</li> 
                                        <li>软件工程服务外包</li>
                                        <li>15064842871</li> 
                                        <li>10K</li>    
                                </ul>
                                </div>-->
                <%--</c:if>--%>
                <%--<c:otherwise>--%>
                <!--                <div>
                                     <ul style="width: 250px; height: 180px; border: 1px red solid;">
                                         <img src="img/8.jpg" style="margin-left: -70px;">
                                        <li>马国才</li>
                                        <li>男</li>
                                        <li>青岛大学</li> 
                                        <li>软件工程服务外包</li>
                                        <li>15064842871</li> 
                                        <li>10K</li>    
                                </ul>
                                </div>-->
                <%--</c:otherwise>--%>
                <%--</c:forEach>--%>
            </div>
    </body>
</html>

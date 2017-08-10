<%-- 
    Document   : viewresume
    Created on : 2017-6-15, 16:01:23
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="font-family: KaiTi">
            <div style="background-color: #cccccc; width: 80%;margin: 0 auto">
                <h2 style="text-align: center;"></h2>
            </div>
            <div style="width: 100%;height: 200px;">

                <div style="width: 33%;height: 100%;  float: left">
                    <div style="margin: 0px 20px">
                        姓名<output></output>
                        <br><br>
                        性别<output>${resume.students.sgender}</output>
                        <br><br>
                        电话${resume.students.smobile}
                        <br><br>
                        邮箱${resume.students.smobile}
                        <br><br>
                        住址${resume.students.smobile}
                    </div>
                                  </div>
                      <div style=" z-index: 2000; position: absolute; margin-left: 1100px; margin-top: -10px;
                          width: 150px; height: 200px;">
                          <img  width="150px;" height="200px;"src="../img/photo1.jpg"></div>


                <div style="width: 33%;height: 100%; float: left">
                    <div style="margin: 0px 20px">
                        年龄<output>${resume.students.smobile}</output>
                        <br><br>
                        政治面貌<output>${resume.students.smajor}</output>
                        <br><br>
                        学历${resume.workExp}
                        <br><br>
                        民族${resume.students.smajor}
                        <br><br>
                        毕业院校${resume.students.smajor}
                    </div>

                </div>
                <div style="background-color:white; width: 34%;height: 100%; float: left ">
                    <img src=""/>
                </div>
            </div>
            <hr color="black" size="2" />
            <div style="background-color: white; width:100%;height: 200px ">
                <h2 style="background-color: #cccccc">实习经历</h2>
                ${resume.workExp}
            </div>
            <hr color="black" size="2" />
            <div style=" width:100%;height: 200px ">
                <h2 style="background-color: #cccccc">自我评价</h2>
                ${resume.workExp}
            </div>
        </div>

    </body>
</html>

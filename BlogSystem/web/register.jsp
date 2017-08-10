<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

        <!--[if IE]>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
            <![endif]-->

        <!-- BOOTSTRAP CORE STYLE CSS -->
        <link href="css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLE CSS -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLE CSS -->
        <link href="css/style.css" rel="stylesheet" />    
        <!-- GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <!-- CORE JQUERY  -->
        <script src="../plugins/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS  -->
        <script src="../plugins/bootstrap.js"></script>
        <!-- CUSTOM SCRIPTS  -->
         <script src="../js/custom.js"></script><script type="text/javascript">
                    function check() {
                        var p1 = document.getElementById("pwd").value;
                        var p2 = document.getElementById("pwd2").value;
                        if (p1!== p2) {//判断两次输入的值是否一致，不一致则显示错误信息
                            alert("两次输入密码不一致，请重新输入");
                            return false;
                        }
                    }
        </script>  
    </head>
    <body>

        <div class="navbar navbar-inverse navbar-fixed-top" >
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="jump/goIndex.do">BlOG</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="jump/goIndex.do">首页</a></li> 
                        <li><a href="blog/findblog.do">查看博文</a></li> 
                        <li><a href="jump/toaddnewblog.do">发布博文</a></li>
                        <li><a href="contact.html">联系我们</a></li>  
                        <li><a href="../jump/gopersonalcenter.do">个人中心</a></li>
                        <li><a href="register.jsp">注册</a></li>
                        </li> 
                    </ul>
                </div>
            </div>
        </div>
        <!--/.NAVBAR END-->
        </br></br>
        <section id="footer-sec" style="height: 500px" >

            <div class="container">
               <!--onsubmit="return check()"-->
                <form  action="student/register.do" method="get" class="form-horizontal" style="margin:10px ;">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">账&nbsp;&nbsp;号：</label>
                        <div class="col-sm-6">
                            <input validateRegex pattern="^[S][0-9]{4}" required="true"  name="sid" type="text" class="form-control"  placeholder="学号以S开头且数字为4位" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">姓&nbsp;&nbsp;名：</label>
                        <div class="col-sm-6">
                            <input placeholder="3到10位英文字母" type="text" class="form-control" name="sname"  required="true" placeholder="用户名称必须是3-10位字母"
                                   title="用户名称必须是3-10位字母"
                                   validateRegex pattern="[a-zA-Z]{3,10}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">密&nbsp;&nbsp;码：</label>
                        <div class="col-sm-6">
                            <input  id="pwd" placeholder="密码必须为6位数" type="password" class="form-control" name="spwd" 
                                    required="true" requiredMessage="*密码不能为空"
                                    title="密码必须是6位" 
                                    validateRegex pattern="[a-zA-Z][0-9]{6}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">密码确认：</label>
                        <div class="col-sm-6">
                            <input id="pwd2" type="password" placeholder="密码确认" class="form-control" name="checkpwd"
                                   required="true" requiredMessage="*密码不能为空" title="密码必须是6个数字" 
                                   validateRegex pattern="[a-zA-Z][0-9]{6}"
                                   onblur="check()">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">性&nbsp;&nbsp;别：</label>
                        <div class="col-sm-6">
                            <input type="radio" name="sgender" value="男"checked="checked">男&nbsp;&nbsp;
                                <input type="radio" name="sgender" value="女" >女
                                    </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-3 control-label">手机号码：</label>
                                        <div class="col-sm-6">
                                            <input placeholder="手机号" type="text" class="form-control" name="smobile" 
                                                   title="手机格式不对"
                                                   validateRegex pattern="1[3578][0-9]{9}"
                                                   >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-3 control-label">专&nbsp;&nbsp;业：</label>
                                        <div class="col-sm-7">
                                            <select name="smajor" id="zhuanye_id" class="form-control">
                                                <option value="大数据">大数据</option>
                                                <option value="云计算">云计算</option>
                                                <option value="移动开发">移动开发</option>
                                                <option value="互联网产品">互联网产品</option>
                                                <option value="人工智能">人工智能</option>
                                                <option value="前端开发">前端开发</option>
                                                <option value="数据库">数据库</option>
                                            </select>
                                        </div> 
                                    </div>
                        <div class="form-group" >
                            <div class="col-sm-2">
                               <input  style="display: none;" type="text" class="form-control" name="fans" value="0">
                           </div>
                        </div>               
                    <br/>
                     <div class="form-group">
                         <div class="col-sm-offset-1 col-sm-9 text-center">
                             <button type="submit" class="btn btn-primary ">提交注册</button>
                         </div>
                      </div>
                </form>                     
        </div>
     </section>     

                                    <!--/TableEND-->
                                    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
                                    <!-- CORE JQUERY  -->
                                    <script src="../plugins/jquery-1.10.2.js"></script>
                                    <!-- BOOTSTRAP SCRIPTS  -->
                                    <script src="../plugins/bootstrap.js"></script>
                                    <!-- CUSTOM SCRIPTS  -->
                                    <script src="../js/custom.js"></script>
                                    </body>
                                    </html>

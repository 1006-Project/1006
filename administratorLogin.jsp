<%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/18
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="css/signin.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/vector.js"></script>

</head>
<div style="text-align:center;clear:both;">
    <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
    <script src="/follow.js" type="text/javascript"></script>
</div>

<div id="container">
    <div id="output">
        <div class="containerT">
            <h1>管理员登录</h1>
            <form class="form" id="entry_form" form action="/tongxunlu/administratorLogin.action" method="post">
                <input name="account" type="text" placeholder="请输入用户名"><br>
                <input name="password" type="password" placeholder="请输入密码"><br>
                <input type="submit" value="登录">
                <div id="prompt" class="prompt"></div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        Victor("container", "output");
        $("#entry_name").focus();
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $("#entry_btn").click();
            }
        });
    });
</script>


<form action="/tongxunlu/administratorLogin.action" method="post">
    请您输入账号：<input name="account" type="text" placeholder="请输入用户名"><br>
    请您输入密码：<input name="password" type="password" placeholder="请输入密码"><br>
    <input type="hidden" name="job" value="administrator">
    <input type="submit" value="登录">
</form>

<p><a href="index.jsp">返回</a></p>

</body>
</html>

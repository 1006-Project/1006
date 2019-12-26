<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/24
  Time: 9:17
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
    <link rel="stylesheet" type="text/css" href="css/login.css">

    <script type="text/javascript" src="nmb/jquery.min.js"></script>
    <script type="text/javascript" src="js/vector.js"></script>

</head>
<div style="text-align:center;clear:both;">
    <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
    <script src="/follow.js" type="text/javascript"></script>
</div>

<div id="container">
    <div id="output">
        <div class="containerT">
            <h1>用户登录</h1>


            <form name = "name1" class="form" id="entry_form" action = "/tongxunlu/stu_login.action" method = "post">
                <input type="text" placeholder="账号" id="entry_name" name = "account" >
                <input type="password" placeholder="密码" id="entry_password" name = "password">
               <!-- <button type = "submit" value = "登录" id="entry_btn"> -->
                <button type="button" id="entry_btn" onclick="sub()">登录</button>
                <a href="stu_new.jsp"><button type="button" id="entry_btn1">注册</button></a>
                <div id="prompt" class="prompt"></div>
            </form>



        </div>
    </div>
</div>

<script type="text/javascript">
    function sub(){
        var account2 = name1.account.value;
        var password2 = name1.password.value;

        if(account2 == ""  ){
            alert("用户名不能为空");
            return;
        }
        else if(account2 != "" && password2 == ""  ){
            alert("密码不能为空");
            return;
        }
        name1.submit();
    }
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
</body>
</html>




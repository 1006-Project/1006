<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/24
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Sign in</title>

    <link rel="stylesheet" type="text/css" href="css/signin.css">

    <script type="text/javascript" src="nmb/jquery.min.js"></script>
    <script type="text/javascript" src="js/vector.js"></script>
</head>
<body>
<SCRIPT LANGUAGE="JavaScript">

    function check(){
        var account = document.regForm.account.value;
        var xmlHttp=new XMLHttpRequest();
        var url = "/tongxunlu/servlet/CheckServlet?account="+account;
        xmlHttp.open("GET", url, true);
        xmlHttp.onreadystatechange=function() {
            if (xmlHttp.readyState==4) {
                checkDiv.innerHTML = xmlHttp.responseText;
            }
            else{
                checkDiv.innerHTML = "正在检测...";
            }
        }
        xmlHttp.send();
    }

    function checkAccount(){
        var account2 = regForm.account.value;
        var password2 = regForm.password.value;
        var cpassword2 = regForm.cpassword.value;
        var name2 = regForm.name.value;

        if(account2 == ""  ){
            alert("用户名不能为空");
            return;
        }
        else if(account2 != "" && password2 == ""  ){
            alert("密码不能为空");
            return;
        }
        else if(account2 != "" && password2 != "" && name2 == ""){
            alert("名字不能为空");
            return;
        }
        else if(password2 != cpassword2){
            alert("两次密码不一致");
            return;
        }

        regForm.submit();
    }
</SCRIPT>
欢迎注册教务管理系统.<BR>


<div id="container">
    <div id="output">
        <div class="containerT">
            <h1>用户注册</h1>
            <form id = "formid" name="regForm" action = "stu_new_success.jsp" class="form" id="entry_form" method = "get">
                <input type="text" placeholder="账号" id="entry_name" name="account" onblur="check()">
                <input type="password" placeholder="密码" id="entry_password" name="password">
                <input type="password" placeholder="确认密码" id="entry_password1" name="cpassword">
                <input type="text" placeholder="您的真实姓名" id="entry_password2" name = "name">
                <button type="button" id="entry_btn1" onclick="checkAccount()">注册</button>
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

</body>
</html>

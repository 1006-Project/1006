<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/26
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/tongxunlu/administratorLogin.action" method="post">
    请您输入账号：<input name="account" type="text" placeholder="请输入用户名"><br>
    请您输入密码：<input name="password" type="password" placeholder="请输入密码"><br>
    <input type="hidden" name="job" value="administrator">
    <input type="submit" value="登录">
</form>

<p><a href="index.jsp">返回</a></p>

</body>
</html>

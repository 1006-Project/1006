<%@ page import="daos.stu_new_dao" %>
<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/24
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- 展现个人信息 -->
<%

    String account = request.getParameter("account");
    String password = request.getParameter("password");
    String name = request.getParameter("name");


    stu_new_dao dao = new stu_new_dao();
    dao.insert(account, password, name);
    out.print("提交成功！等待管理员审核.........");
%>
<hr><br>
<a href = "http://localhost:8080/tongxunlu/stu_login.jsp">前往登录</a>
</body>
</html>

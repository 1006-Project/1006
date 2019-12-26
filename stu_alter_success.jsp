<%@ page import="daos.stu_alter_dao" %>
<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/24
  Time: 22:29
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
    String account = (String)session.getAttribute("account");
    String name = request.getParameter("name");
    String major = request.getParameter("major");
    String classes = request.getParameter("classes");
    String in_year = request.getParameter("in_year");
    String out_year = request.getParameter("out_year");
    String unit = request.getParameter("unit");
    String city = request.getParameter("city");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");

    stu_alter_dao dao = new stu_alter_dao();
    dao.alters(account,name,major,classes,in_year,out_year,unit,city,phone,email);
    out.print("修改成功！即将跳转！");
%>
<script>
    window.setTimeout(function() {
        window.location.replace("http://localhost:8080/tongxunlu/stu_alter.jsp");
    },500);
</script>
</body>
</html>

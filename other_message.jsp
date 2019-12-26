<%@ page import="daos.stu_dao" %>
<%@ page import="beans.student" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/24
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String account = request.getParameter("account");

    stu_dao daot = new stu_dao();
    ArrayList<student> students = daot.Login(account);
    for(int i = 0; i < students.size(); i++){
        student stud = (student)students.get(i);
%>
<table>
    <tr>
        <td>姓名：</td><td><%= stud.getName()%></td>
    </tr>
    <tr>
        <td>所读专业：</td><td><%=stud.getMajor() %></td>
    </tr>
    <tr>
        <td>所在班级：</td><td><%=stud.getClasses()%></td>
    </tr>
    <tr>
        <td>入学年份：</td><td><%=stud.getIn_year()%></td>
    </tr>
    <tr>
        <td>毕业年份：</td><td><%= stud.getOut_year()%></td>
    </tr>
    <tr>
        <td>就业单位：</td><td><%=stud.getUnit()%></td>
    </tr>
    <tr>
        <td>所在城市：</td><td><%= stud.getCity()%></td>
    </tr>
    <tr>
        <td>联系电话：</td><td><%= stud.getPhone()%></td>
    </tr>
    <tr>
        <td>联系电话：</td><td><%= stud.getEmail()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
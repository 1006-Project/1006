<%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/22
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@page import="dao.UncheckedDao" %>
<%@page import="dao.PassedDao" %>
<%@page import="beans.Unchecked" %>
<%@page import="java.util.ArrayList" %>
<html>
<head>
    <title>测试DAO</title>
</head>
<body>

<h1>待审核账号</h1>
<hr>

<%
    UncheckedDao dao = new UncheckedDao();
    ArrayList<Unchecked> uncheckeds = dao.queryAllUncheckeds();

%>

<table border="2">
    <tr>
        <td>账号</td>
        <td>密码</td>
        <td>姓名</td>
        <td colspan="2">执行操作</td>
    </tr>
    <%
        for(int i = 0; i < uncheckeds.size(); i++)
        {
            Unchecked un = uncheckeds.get(i);
    %>

    <tr>
        <td><%=un.getAccount()%></td>
        <td><%=un.getPassword()%></td>
        <td><%=un.getName()%></td>
        <td><a href="agreeOne.jsp?number=<%=un.getAccount()%>">通过</a></td>
        <td><a href="deleteOne.jsp?number=<%=un.getAccount()%>">删除</a></td>

    </tr>

    <%
        }
    %>

</table>


<h1>已通过审核的账号</h1>
<hr>

<%
    PassedDao ps = new PassedDao();
    ArrayList<Unchecked> passeds = ps.queryAllPasseds();

%>

<table border="2">
    <tr>
        <td>账号</td>
        <td>密码</td>
        <td>姓名</td>
        <td>操作</td>

    </tr>
    <%
        for(int i = 0; i < passeds.size(); i++)
        {
            Unchecked un = passeds.get(i);
    %>

    <tr>
        <td><%=un.getAccount()%></td>
        <td><%=un.getPassword()%></td>
        <td><%=un.getName()%></td>
        <td><a href="forbidOne.jsp?number=<%=un.getAccount()%>">禁用</a></td>

    </tr>

    <%
        }
    %>




</table>

<p><a href="administrator.jsp">返回</a></p>


</body>
</html>

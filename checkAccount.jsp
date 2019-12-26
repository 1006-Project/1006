<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/22
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>审核账号</title>
</head>
<body>

<h1>审核账号</h1>
<hr>

<table border="1">
    <tr>
        <td>账号/学号</td>
        <td>密码</td>
        <td>姓名</td>
        <td colspan="2">执行操作</td>
    </tr>

<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    String url = "jdbc:mysql://localhost:3306/tongxunlu"; //数据库名
    String username = "root";  //数据库用户名
    String pwd = "weibo123";  //数据库用户密码
    Connection conn = null;  //连接状态
    try {
        conn = DriverManager.getConnection(url, username, pwd);
    } catch (SQLException e) {
        e.printStackTrace();
    }

    if(conn != null)
    {
        System.out.println("数据库连接成功<br>");

        Statement stat = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM unchecked;";  //查询语句
        stat = conn.createStatement();
        rs = stat.executeQuery(sql);


        while (rs.next())
        {
            out.print("<tr>");
            out.print("<td>" + rs.getString(1) + "</td>");
            out.print("<td>" + rs.getString(2) + "</td>");
            out.print("<td>" + rs.getString(3) + "</td>");
            out.print("<td><input type=\"button\" value=\"拒绝\" onclick=\"\"></td>");
            out.print("<td><input type=\"button\" value=\"通过\" onclick=\"\"></td>");
            out.print("</tr>");
        }


        stat.close();
        conn.close();
        rs.close();
    }
%>

    <tr><td><input type="button" onclick="window.location.reload()"></td></tr>

</table>

</body>
</html>

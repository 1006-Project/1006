<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/22
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>测试数据库</title>
</head>
<body>

<h1>查询信息</h1>
<hr>

<form action="test.jsp">
    <input type="text" name="acc"><input type="submit" value="查询">
</form>

<table border="2">
    <tr>
        <td>账号</td>
        <td>姓名</td>
        <td>专业</td>
        <td>班级</td>
        <td>入学年份</td>
        <td>毕业年份</td>
        <td>工作单位</td>
        <td>所在城市</td>
        <td>电话号码</td>
        <td>电子邮箱</td>
        <td>上次登陆时间</td>
        <td>总登录次数</td>
    </tr>


<%

    String acc = request.getParameter("acc") + "";

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

    if(conn != null) {
        out.println("数据库连接成功<br>");

        Statement stat = null;

        ResultSet rs = null;
        String sql = "SELECT * FROM student;";  //查询语句
        stat = conn.createStatement();
        rs = stat.executeQuery(sql);

        int i = 1;

        System.out.println(acc);


        while (rs.next())
        {

            out.print("<tr>");

            if(rs.getString(1).contains(acc))
            {

                for (i = 1; i < 13; i++)
                    out.print("<td>" + rs.getString(i) + "</td>");
            }
            out.print("</tr>");
        }


        stat.close();
        conn.close();
        rs.close();
    }
%>


</table>

</body>
</html>

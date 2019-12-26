<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/22
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除一项</title>
</head>
<body>

<%
    String shanchu = request.getParameter("number");

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
        String sql = "delete FROM unchecked where account = '"+shanchu+"';";  //查询语句
        stat = conn.createStatement();
        //删除
        int i = stat.executeUpdate(sql);
        out.println("成功删除" + i + "行<br>");
        //再查询一次
        sql = "select * from unchecked";
        rs = stat.executeQuery(sql);
        while (rs.next())
        {
            out.println(rs.getString("account") + "<br>");
            out.println(rs.getString("password") + "<br>");
            out.println(rs.getString("name") + "<br>");
        }

        stat.close();
        conn.close();
        rs.close();
    }
%>
<jsp:forward page="testDao.jsp"></jsp:forward>

</body>
</html>

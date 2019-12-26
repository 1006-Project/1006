<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/22
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>申请通过</title>
</head>
<body>


<%
    String str = request.getParameter("number");

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
        String sql = "select * from unchecked where account = '"+str+"'";
        stat = conn.createStatement();

        //查询到这一行
        rs = stat.executeQuery(sql);

        rs.next();
        String a = rs.getString("account");
        String p = rs.getString("password");
        String n = rs.getString("name");

        //再插入这一行到passed
        sql = "insert into passed(account, password, name) values ('"+a+"', '"+p+"', '"+n+"')";
        int i = stat.executeUpdate(sql);
        System.out.println("成功插入" + i + "行");

        //再插入这一行到student
        sql = "insert into student(account, password, name) values ('"+a+"', '"+p+"', '"+n+"')";
        i = stat.executeUpdate(sql);
        System.out.println("成功插入" + i + "行");

        sql = "delete FROM unchecked where account = '"+str+"';";  //删除语句
        //删除
        i = stat.executeUpdate(sql);
        out.println("成功删除" + i + "行<br>");

        stat.close();
        conn.close();
        rs.close();
    }
%>
<jsp:forward page="testDao.jsp"></jsp:forward>

</body>
</html>

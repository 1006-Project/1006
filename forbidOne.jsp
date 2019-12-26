<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/22
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>禁用一个账号</title>
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

        String sql = "delete FROM passed where account = '"+shanchu+"';";  //查询语句
        stat = conn.createStatement();
        //删除
        int i = stat.executeUpdate(sql);
        out.println("成功删除" + i + "行<br>");


        stat.close();
        conn.close();

}
%>
<jsp:forward page="testDao.jsp"></jsp:forward>


</body>
</html>

<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/26
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>禁用一个学生</title>
</head>
<body>

<%
    String shanchu = request.getParameter("number");

    Connection conn;
    //jdbc驱动
    String driver="com.mysql.cj.jdbc.Driver";
    //这里我的数据库是cxxt
    String url="jdbc:mysql://localhost:3306/tongxunlu?&useSSL=false&serverTimezone=UTC";
    String user="root";
    String pwd="wjq123";
    try {
        //注册JDBC驱动程序
        Class.forName(driver);
        //建立连接
        conn = DriverManager.getConnection(url, user, pwd);
        if (!conn.isClosed()) {
            String sql = "delete FROM student where account = '"+shanchu+"';";
            Statement stmt = conn.createStatement();
            int i = stmt.executeUpdate(sql);
            System.out.println("成功删除" + i + "行");
        }


        conn.close();
    } catch (ClassNotFoundException e) {
        System.out.println("数据库驱动没有安装");

    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("数据库连接失败");
    }

%>

<jsp:forward page="query.jsp"></jsp:forward>

</body>
</html>

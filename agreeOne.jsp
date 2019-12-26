<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/26
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%
    String str = request.getParameter("number");

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

            String sql = "select * from unchecked where account = '"+str+"'";
            Statement stat = conn.createStatement();

            //查询到这一行
            ResultSet rs = stat.executeQuery(sql);

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
            System.out.println("成功删除" + i + "行<br>");


        }


        conn.close();
    } catch (ClassNotFoundException e) {
        System.out.println("数据库驱动没有安装");

    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("数据库连接失败");
    }

%>

<jsp:forward page="checkAccount.jsp"></jsp:forward>

</body>
</html>

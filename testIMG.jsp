<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/24
  Time: 23:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrator Page</title>

    <link href='https://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" type="text/css" href="css/demo.css">
    <link rel="stylesheet" href="css/style1.css"> <!-- Resource style -->
    <script src="js/modernizr.js"></script> <!-- Modernizr -->
</head>
<body>
<header class="cd-main-header animate-search">
    <div class="cd-logo"><a href="#"><img src="img/cd-logo.svg" alt="Logo"></a></div>

    <nav class="cd-main-nav-wrapper">

        <a href="#" class="cd-search-trigger cd-text-replace">Search</a>  <!-- 搜索按钮 -->

        <ul class="cd-main-nav">
            <li><a href="loginChoose.html">退出登录</a></li>     <!-- 返回上一层 -->
        </ul> <!-- .cd-main-nav -->
    </nav> <!-- .cd-main-nav-wrapper -->

    <a href="#" class="cd-nav-trigger cd-text-replace">Menu<span></span></a>
</header>



<div id="search" class="cd-main-search">
    <form action="testIMG.jsp">
        <input type="search" placeholder="Search..." name="acc">

        <div class="cd-select">
        </div>
    </form>
    <div class="cd-search-suggestions">
        <div class="news">
            <ul>
                <li>
                    <a class="image-wrapper" href="testIMG.jsp" ><img src="img/placeholder1.png" alt="News image"></a> <!-- 查询按钮 -->
                    <h4><a>点击查看查询结果</a></h4>    <!-- delete-->
                </li>
            </ul>
        </div> <!-- .news -->

        <div class="quick-links">


        </div> <!-- .quick-links -->
    </div> <!-- .cd-search-suggestions -->

</div> <!-- .cd-main-search -->
<div class="cd-cover-layer"></div> <!-- cover main content when search form is open -->


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
        <td>操作</td>
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




<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/main1.js"></script> <!-- Resource jQuery -->
















</body>
</html>

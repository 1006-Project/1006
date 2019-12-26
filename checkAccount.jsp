<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/26
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="daos.UncheckedDao" %>
<%@page import="daos.PassedDao" %>
<%@page import="beans.test_stu" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE HTML>
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
    <div class="cd-logo"><a href="admSuccess.jsp"><img src="img/cd-logo.svg" alt="Logo"></a></div>

    <nav class="cd-main-nav-wrapper">



        <ul class="cd-main-nav">
            <li><a href="welcome.html">退出登录</a></li>     <!-- 返回上一层 -->
        </ul> <!-- .cd-main-nav -->
    </nav> <!-- .cd-main-nav-wrapper -->

    <a href="#" class="cd-nav-trigger cd-text-replace">Menu<span></span></a>
</header>


<div id="search" class="cd-main-search">
    <form>
        <input type="search" placeholder="Search...">

        <div class="cd-select">
        </div>
    </form>
    <div class="cd-search-suggestions">

        <div class="quick-links">


        </div> <!-- .quick-links -->
    </div> <!-- .cd-search-suggestions -->

</div> <!-- .cd-main-search -->
<div class="cd-cover-layer"></div> <!-- cover main content when search form is open -->
<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/main1.js"></script> <!-- Resource jQuery -->

<h1>待审核账号</h1>
<hr>

<%
    UncheckedDao dao = new UncheckedDao();
    ArrayList<test_stu> uncheckeds = dao.queryAllUncheckeds();

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
            test_stu un = uncheckeds.get(i);
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
    ArrayList<test_stu> passedOnes = ps.queryAllPasseds();

%>

<table border="2">
    <tr>
        <td>账号</td>
        <td>密码</td>
        <td>姓名</td>
        <td>操作</td>

    </tr>
    <%
        for(int i = 0; i < passedOnes.size(); i++)
        {
            test_stu uns = passedOnes.get(i);
    %>

    <tr>
        <td><%=uns.getAccount()%></td>
        <td><%=uns.getPassword()%></td>
        <td><%=uns.getName()%></td>
        <td><a href="shanchu.jsp?number=<%=uns.getAccount()%>">删除记录</a></td>

    </tr>

    <%
        }
    %>




</table>

<p><a href="admSuccess.jsp">返回</a></p>



</body>
</html>

<%@ page import="java.sql.*" %>
<%@ page import="daos.StudentDao" %>
<%@ page import="beans.student" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/26
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询所有学生的信息</title>
</head>
<body>


<h1>查看信息</h1>
<hr>



<form action="query.jsp">
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
        <td>操作</td>
    </tr>



    <%
        StudentDao stu = new StudentDao();
        ArrayList<student> allStudents = stu.queryAllStudents();
        student jack;

        String acc = request.getParameter("acc") + "";

        int i = 1;
        int j = 0;

        System.out.println(acc);

        for(j = 0; j < allStudents.size(); j++)
        {
            jack = allStudents.get(j);
            if (jack.getAccount().contains(acc))
            {
                out.print("<tr>");

                out.print("<td>" + jack.getAccount() + "</td>");
                out.print("<td>" + jack.getName() + "</td>");
                out.print("<td>" + jack.getMajor() + "</td>");
                out.print("<td>" + jack.getClasses() + "</td>");
                out.print("<td>" + jack.getIn_year() + "</td>");
                out.print("<td>" + jack.getOut_year() + "</td>");
                out.print("<td>" + jack.getUnit() + "</td>");
                out.print("<td>" + jack.getCity() + "</td>");
                out.print("<td>" + jack.getPhone() + "</td>");
                out.print("<td>" + jack.getEmail() + "</td>");
                out.print("<td>" + jack.getTime() + "</td>");
                out.print("<td>" + jack.getSum() + "</td>");
                out.print("<td>" + "<a href=\"deleteStudent.jsp?acc=" + jack.getAccount() + "\">禁用</a>" + "</td>");

                out.print("</tr>");
            }

        }


    %>

</table>

<p><a href="admSuccess.jsp">返回</a></p>

</body>
</html>

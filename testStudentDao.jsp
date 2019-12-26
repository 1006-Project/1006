<%@ page import="dao.StudentDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.Student" %>

<%--
  Created by IntelliJ IDEA.
  User: wo
  Date: 2019/12/25
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>测试学生dao</title>
</head>
<body>

<h1>测试学生dao</h1>
<hr>

<%
    StudentDao dao = new StudentDao();

    ArrayList studentArrayList = dao.queryAllStudents();

%>



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
        for(int i = 0; i < studentArrayList.size(); i++)
        {
            Student stu = (Student) studentArrayList.get(i);
    %>

    <tr>
        <td><%=stu.getAccount()%></td>
        <td><%=stu.getName()%></td>
        <td><%=stu.getMajor()%></td>
        <td><%=stu.getClasses()%></td>
        <td><%=stu.getIn_year()%></td>
        <td><%=stu.getOut_year()%></td>
        <td><%=stu.getUnit()%></td>
        <td><%=stu.getCity()%></td>
        <td><%=stu.getPhone()%></td>
        <td><%=stu.getEmail()%></td>
        <td><%=stu.getTime()%></td>
        <td><%=stu.getSum()%></td>
        <td>
            <form action="/tongxunlu/forbid.action" method="post">
                <input type="submit" value="禁用">
                <input type="hidden" name="acc" value="<%=stu.getAccount()%>">
            </form>
        </td>



    </tr>

    <%
        }
    %>

</table>


</body>
</html>

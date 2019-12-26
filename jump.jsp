<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/24
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>


    <title>My JSP 'jump.jsp' starting page</title>
</head>

<body>
欢迎登录系统！即将跳转到操作页面......
<script type = "text/javascript">
    window.setTimeout(function() {
        window.location.href = "http://localhost:8080/tongxunlu/stu_alter.jsp";
    },1000);
</script>
</body>
</html>

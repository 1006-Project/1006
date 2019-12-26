
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
    if(application.getAttribute("count")==null){
    application.setAttribute("count",0);
   }

   int count=Integer.parseInt(application.getAttribute("count").toString());
               count++;
    application.setAttribute("count", count);
     %>
     <div class="p3">访问次数：<%=application.getAttribute("count") %></div>

</body>
</html>

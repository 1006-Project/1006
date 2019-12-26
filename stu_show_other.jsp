<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/24
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>他人主页</title>
</head>
<body>
<script>
    function show_other() {
        var acc = fog.account.value;
        var url = "other_message.jsp?account=" + acc;
        var xmlHttp = new XMLHttpRequest();
        xmlHttp.open("GET",url, true);
        xmlHttp.onreadystatechange=function() {
            if(xmlHttp.readyState == 4){
                show_otherDiv.innerHTML = xmlHttp.responseText;
            }
        }
        xmlHttp.send();
    }
</script>
<form name = "fog" >

    <input type = "text" name = "account" > &nbsp;
    <input type = "button" value = "查询" onclick="show_other()">
</form>
<div id = "show_otherDiv"></div>
</body>
</html>

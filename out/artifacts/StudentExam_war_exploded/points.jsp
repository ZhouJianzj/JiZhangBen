<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/20
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩</title>
</head>
<body>
<br><br><br><br><br>
<%
    Integer count = (Integer) session.getAttribute("rightNum");
%>
<center>
    <font size="20" color="red">作对数：<%=count%></font>
</center>
</body>
</html>

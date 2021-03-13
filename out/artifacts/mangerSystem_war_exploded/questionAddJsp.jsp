<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/13
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Integer add = (Integer) request.getAttribute("add");
%>
<%
    if (add == 1){
%>
    <br><br><br><br><center><font size="25px"> 题目添加成功!</font></center>
<%
    } else{
%>
<br><br><br><br><center><font size="25px"> 题目添加失败!</font></center>
<%
    }
%>

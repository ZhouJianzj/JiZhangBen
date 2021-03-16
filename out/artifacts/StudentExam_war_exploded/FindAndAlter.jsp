<%@ page import="com.Jianzhou.entity.UserFm" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/15
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    UserFm userFm = (UserFm)request.getAttribute("UserFm");
    Integer num =(Integer) request.getAttribute("num");
%>
<html>
<head>
    <title>修改信息</title>
</head>
<br><br><br><br><br>
<%
    if (num == -1){

    }else if (num == 1){
%>
<center> <font color="red"  >修改成功！</font></center>
<%
    return;
    }else if (num == 0){
%>
       <center> <font color="red"  >修改失败!</font></center>
<%
    }
%>
<body>
    <center>
        <form action="/myWeb/alter" method="get">
            <table>
                <tr>
                    <td >用户名</td>
                    <td><input type="text" name="userName" readonly value="${requestScope.UserFm.userName}"></td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td><input type="text" name="password" value="${requestScope.UserFm.psd}"></td>
                </tr>
                <tr>
                    <td>邮箱</td>
                    <td><input type="text" name="email" value="${requestScope.UserFm.email}"></td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td><input type="text" name="gender" value="${requestScope.UserFm.gender}"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit">
                    </td>
                </tr>
            </table>

        </form>
    </center>
</body>
</html>

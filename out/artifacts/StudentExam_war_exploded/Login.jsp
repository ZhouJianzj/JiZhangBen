<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <title>登录界面</title>
</head>
<body style="background: darkslategray">
                    <br><br><br><br><br>
<center>
    <%
        Integer key = Integer.parseInt(request.getParameter("key"));
        System.out.println("登录日志：1密码错误 / 0需要注册" +key);
        if (key == 1){
     %>
    <font size="10px" color="red">密码错误！</font>
    <%
        }
        else if (key == 0)
        {
    %>
        <font color="green" size="10px"><a href="signIn.html">没有注册，点击注册！</a></font>
    <%
        }
    %>
    <form action="/myWeb/loginServlet" method="post">
        <table >
            <tr>
                <td colspan="2" align="center"><font size="20px">用户登录</font> </td>
            </tr>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="userName"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="text" name="password"></td>
            </tr>
            <tr>
                <td><input type="reset" ></td>
                <td align="right"><input type="submit"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
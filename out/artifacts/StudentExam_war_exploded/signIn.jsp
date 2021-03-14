<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/14
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册不成功页面</title>
</head>
<body>
<center>
    <!--        action 里面的地址是动态资源文件的地址-->
    <br><br><br><br>
    <%
        Integer aDo = Integer.parseInt(request.getParameter("do"));
        if (aDo == 1){
    %>
    <font size="8px" color="red" style="align-content: center">用户名已存在！</font>
    <%
        } else if (aDo == 11) {
    %>
    <font size="8px" color="red" style="align-content: center"><a href="Login.html">添加成功，点击登录！</a></font>
    <%
        }else {
    %>
    <font size="8px" color="red" style="align-content: center">注册失败！</font>
    <%
        }
    %>

    <form action="/myWeb/signIn" method="get" >
        <table>
            <thead >注册</thead>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="userName" id="name"></td>

            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="psd" id="psd"></td>
                <td><span id="pwdSpan" style="color: red;font-size: small;"></span></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="radio" name="gender" value="男">男
                    <input type="radio" name="gender" value="女">女
                </td>
            </tr>
            <tr>
                <td>邮箱地址：</td>
                <td><input type="text" name="email" id="email"></td>
                <td><span id="emailSpan" style="color: red;font-size: small;"></span></td>
            </tr>
            <tr>
                <td><input type="reset" value="重置" id="reset"></td>
                <td align="right"><input type="submit" value="提交"></td>
            </tr>
        </table>
    </form>
</>
<script>

    //邮箱的验证
    document.getElementById("email").onblur = function(){
        var regExp = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
        var ok = regExp.test(document.getElementById("email").value)
        if(ok){
            document.getElementById("emailSpan").innerHTML = "<font color='aquamarine'>合格</font>"
        }else{
            document.getElementById("emailSpan").innerText = "邮箱验证失败！"
        }
        document.getElementById("email").onfocus = function(){
            document.getElementById("emailSpan").innerHTML = ""
        }
    }
    //密码的验证
    document.getElementById("psd").onblur = function () {
        var regExp = /^[a-zA-Z]\w{5,17}$/
        var ok = regExp.test(document.getElementById("psd").value)
        if(ok){
            document.getElementById("pwdSpan").innerHTML = "<font color='aquamarine'>合格</font>"
        }else{
            document.getElementById("pwdSpan").innerText = "密码验证失败！"
        }
        document.getElementById("psd").onfocus = function(){
            document.getElementById("pwdSpan").innerHTML = ""
        }
    }
    //    重置按钮恢复正则验证
    document.getElementById("reset").onclick = function () {
        document.getElementById("pwdSpan").innerHTML = ""
        document.getElementById("emailSpan").innerHTML = ""
    }
</script>
</body>
</html>

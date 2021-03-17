<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/16
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<body>
<br><br><br><br>
<%

    Integer add = (Integer) request.getAttribute("add");
    System.out.println( "试题注册情况（-1页面加载/0添加失败/1添加成功）：" + add);
    if (add == 1){
%>
        <center><font color="red">添加成功！</font></center>
<%
    }else if (add == 0){
%>
    <center><font color="red">添加失败！</font></center>
<%
    }
%>
<form action="/myWeb/addQuestion" method="get" >
    <table border="" align="center">
        <tr>
            <th colspan="2"><font size="20" >试题添加</font></th>
        </tr>
        <tr>
            <td>题目</td>
            <td><input type="text" name="title" class="One" /></td>
        </tr>
        <tr>
            <td>A</td>
            <td><input type="text" name="A" class="One" /></td>
        </tr>
        <tr>
            <td>B</td>
            <td><input type="text" name="B"  class="One"/></td>
        </tr>
        <tr>
            <td>C</td>
            <td><input type="text" name="C"  class="One"/></td>
        </tr>
        <tr>
            <td>D</td>
            <td><input type="text" name="D" class="One" /></td>
        </tr>
        <tr>
            <td>正确答案</td>
            <td>
                <input type="radio" name="rightOption" value="a"> A
                <input type="radio" name="rightOption" value="b"> B
                <input type="radio" name="rightOption" value="c"> C
                <input type="radio" name="rightOption" value="d"> D
            </td>
        </tr>
        <tr>
            <td><input type="reset" value="重置" /></td>
            <td align="right"><input type="submit" value="提交" /></td>
        </tr>
    </table>
</form>
</body>

</html>

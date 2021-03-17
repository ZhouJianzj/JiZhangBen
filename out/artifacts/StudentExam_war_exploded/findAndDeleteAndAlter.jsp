<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.Jianzhou.entity.QuestionFrm" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/17
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>试题修改查询搜索</title>
</head>
<body>
<br><br><br><br>

<form action="" method="get" >
    <table align="center" >
        <tr>
            <td><input type="text" name="titleSearch"   /></td>
            <td><input type="submit"  value="搜索"/></td>
        </tr>
    </table>
</form>
<br>
<%
    Integer delete = (Integer) session.getAttribute("delete");
    System.out.println("删除操作(-1页面加载/1删除成功/0删除失败)" + delete);
    if (delete == 0){
%>
<center><font color="red">删除失败!</font></center>
<%
    }else if (delete == 1){
%>
<center><font color="red">删除成功!</font></center>
<%
    }
%>
<%
    Integer alter = (Integer) session.getAttribute("alter");
    System.out.println("修改(-1页面加载/0修改失败/1修改成功)" + alter);
    if (alter == 0){
%>
<center><font color="red">修改失败!</font></center>
<%
    }else if (alter == 1){
%>
<center><font color="red">修改成功!</font></center>
<%
    }
%>
<table border="" align="center">
    <tr>
        <th>编号</th>
        <th>题目</th>
        <th>选项A</th>
        <th>选项B</th>
        <th>选项C</th>
        <th>选项D</th>
        <th>答案</th>
        <th colspan="2">操作</th>
    </tr>
    <%
        List question = (List) request.getAttribute("list");
        Iterator iterator = question.iterator();
        while (iterator.hasNext()){
            QuestionFrm questionFrm = (QuestionFrm) iterator.next();
            int id = questionFrm.getId();
            String title = questionFrm.getTitle();
            String optionA = questionFrm.getOptionA();
            String optionB = questionFrm.getOptionB();
            String optionC = questionFrm.getOptionC();
            String optionD = questionFrm.getOptionD();
            String rightAnswer = questionFrm.getRightAnswer();

    %>
    <tr>
        <td><%=id%></td>
        <td><%=title%></td>
        <td><%=optionA%></td>
        <td><%=optionB%></td>
        <td><%=optionC%></td>
        <td><%=optionD%></td>
        <td><%=rightAnswer%></td>
        <td><a href="/myWeb/deleteQuestion?id=<%=id%>" ><input type="button" value="删除" ></a></td>
        <td><a href="" ><input type="button" value="修改" ></a></td>
    </tr>
    <%
        }
    %>

</table>
</body>
</html>

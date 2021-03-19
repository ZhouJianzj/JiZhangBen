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
<%--搜索栏 --%>
<form action="/myWeb/questionSearch" method="get" >
    <table align="center" >
        <tr>
            <td><input type="text" name="title"   /></td>
            <td><input type="submit"  value="搜索"/></td>
        </tr>
    </table>
</form>
<br>
<%--删除成功与否的展示--%>
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
<%--    获取find传递过来的数据，是一个集合形式的--%>
    <%
        List list = (List) session.getAttribute("list");
        Iterator iterator = list.iterator();
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
        <td><a href="/myWeb/findTwo?id=<%=id%>" ><input type="button" value="修改" ></a></td>
    </tr>
    <%
        }
    %>

</table>
</body>
</html>

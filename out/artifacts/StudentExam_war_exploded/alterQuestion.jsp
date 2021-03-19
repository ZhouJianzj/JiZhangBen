<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.Jianzhou.entity.QuestionFrm" %>
<%@ page import="com.sun.xml.internal.bind.v2.model.core.ID" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/18
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br><br><br><br><br>
<%

    QuestionFrm next = (QuestionFrm) session.getAttribute("obj");
    Integer alter = (Integer) session.getAttribute("alter");
    if (alter == 1){
%>
<center><font color="red">修改成功！</font></center>
<%
    }else if (alter == 0){
%>
<center><font color="red">修改失败！</font></center>
<%
    }
%>

<form action="/myWeb/alterQuestion" method="get" >
    <table border="" align="center">
        <tr>
            <th colspan="2"><font size="20" >试题修改</font></th>
        </tr>
        <tr>
            <td>编号</td>
            <td><input type="text" name="id" value="<%=next.getId()%>"  readonly/></td>
        </tr>
        <tr>
            <td>题目</td>
            <td><input type="text" name="title" value="<%=next.getTitle()%>"/></td>
        </tr>
        <tr>
            <td>A</td>
            <td><input type="text" name="A" value="<%=next.getOptionA()%>" /></td>
        </tr>
        <tr>
            <td>B</td>
            <td><input type="text" name="B"  value="<%=next.getOptionB()%>"/></td>
        </tr>
        <tr>
            <td>C</td>
            <td><input type="text" name="C" value="<%=next.getOptionC()%>"/></td>
        </tr>
        <tr>
            <td>D</td>
            <td><input type="text" name="D" value="<%=next.getOptionD()%>" /></td>
        </tr>
        <tr>
            <td>正确答案</td>
            <%
                String checkA = "";
                String checkB = "";
                String checkC = "";
                String checkD = "";
                String rightAnswer = next.getRightAnswer();
                if ("A".equals(rightAnswer)){
                    checkA = "checked";
                }else if ("B".equals(rightAnswer)){
                    checkB = "checked";
                }else if ("C".equals(rightAnswer)){
                    checkC = "checked";
                }else {
                    checkD = "checked";
                }
            %>
            <td>
                <input type="radio" name="rightOption" value="A" <%=checkA%>> A
                <input type="radio" name="rightOption" value="B" <%=checkB%>> B
                <input type="radio" name="rightOption" value="C" <%=checkC%>> C
                <input type="radio" name="rightOption" value="D" <%=checkD%>> D
            </td>
        </tr>
        <tr>
            <td align="right"><input type="submit" value="提交修改" /></td>
            <td><a href="/myWeb/find"><input type="button" value="跳转"></a></td>
        </tr>
    </table>
</form>
</body>
</html>

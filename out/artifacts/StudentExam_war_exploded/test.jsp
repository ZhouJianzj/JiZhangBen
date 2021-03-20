<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.Jianzhou.entity.QuestionFrm" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/20
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>考试界面</title>
</head>
<body>
<br><br><br><br><br>
<center>
    <form action="/myWeb/startTest" method="get">
        <table>
            <tr>
                <td style="font-size: large;">一、选择题</td>
                <td><textarea rows="1" cols="3" style="resize: none;" name="num"></textarea>
                    <input type="submit" value="生成" />
                </td>
            </tr>
        </table>
    </form>
    <br>


    <form action="/myWeb/countPoints" method="get">
        <table >
            <%
                Object list =  session.getAttribute("list");
                if (list != null  ){
                    List list1 = (List) list;
                    int size = list1.size();
                    int count = 0;
                    Iterator iterator = list1.iterator();
                    while (iterator.hasNext()){
                       QuestionFrm next = (QuestionFrm) iterator.next();
             %>
            <tr >
                <td colspan="4" align="left" onreadystatechange="false" ><%=next.getId()%>、<%=next.getTitle()%></td>
            </tr>
            <tr>
                <td><input type="radio" name="<%=next.getId()%>"  value="A" />A、<%=next.getOptionA()%></td>
                <td ><input type="radio" name="<%=next.getId()%>"  value="B" />B、<%=next.getOptionB()%></td>
                <td><input type="radio" name="<%=next.getId()%>"  value="C" />C、<%=next.getOptionC()%></td>
                <td><input type="radio" name="<%=next.getId()%>"  value="D" />D、<%=next.getOptionD()%></td>
            </tr>
            <%
                        count++;
                        if (size == count){
            %>
                <tr ><td colspan="4" align="right"><input type="submit" value="交卷"></td></tr>
            <%
                        }
                    }
                }
            %>

        </table>
    </form>
</center>
</body>
</html>

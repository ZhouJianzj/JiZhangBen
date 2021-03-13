<%@ page import="com.jianZhou.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--jsp中的规范--%>

        <%-- 里面写Java文件--%>
<%
    int numOne = 1;
    int numTwo = 2;
    int sum = numOne + numTwo;
%>
        <%--输出的语句标记符--%>
numOne + numTwo = <%= sum%><br>
numOne + numTwo = <%= numOne + numTwo%><br>
        <%--创建对象并且导包--%>
<%
    User zhoujian = new User("周健", 22);
    User zhanghua = new User("彰化", 20);
%>
用户1:<%=zhoujian.getName()%> 年龄:<%=zhoujian.getAge()%><br>
用户2:<%=zhanghua.getName()%> 年龄:<%=zhanghua.getAge()%><br>
        <%--html语句和Java标签语句的参杂使用,
        注意: 控制语句一行一个断开--%>
<%
    if (zhoujian.getAge() <=18){
%>
     <br><br><br><br><center>不允许进入</center>
<%
    }else{
%>
    <br><br><br><br><center>允许进入</center>
<%
    }
%>
        <%--表格的建立--%>
<center>
<table border="1px">
    <tr>
        <td>姓名</td>
        <td>年龄</td>
    </tr>
<%
    ArrayList<User> users = new ArrayList<>();
    users.add(zhanghua);
    users.add(zhoujian);
%>
<%
    for (User u :users){
%>
        <tr>
            <td><%=u.getName()%></td>
            <td><%=u.getAge()%></td>
        </tr>
<%
    }
%>
</table>
</center>
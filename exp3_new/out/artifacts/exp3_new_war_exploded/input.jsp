
<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/18
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%!
    private class forward {
    }
%><%

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form >
    请选择你要处理的图形：
    <input type="radio" name="shape" value="Circle">圆形
    <input type="radio" name="shape" value="Rectangle">矩形<br>
    <input type="submit" value="提交"><br>
</form>
<%
    if (request.getParameter("shape")!=null){
    if("Circle".equals(request.getParameter("shape"))){
%>
        <form action="computer_redirect.jsp" method="post">
            <input type="text" name="radius">
            <input type="submit" value="提交">
        </form>
<%
    }
    else if("Rectangle".equals(request.getParameter("shape"))){
%>
        <form action="computer_redirect.jsp" method="post">
            请输入矩形的宽：
            <input type="text" name="width"><br>
            请输入矩形的高：
            <input type="text" name="height"><br>
            <input type="submit" value="提交"><br>
        </form>
<%
}
    else {
        out.print("错误！！！");
}}
%>

</body>
</html>

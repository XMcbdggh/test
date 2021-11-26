<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/24
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String radius= null;
    String c_area= null;
    String width= null;
    String height= null;
    String r_area= null;
    try {
        radius = request.getParameter("radius");
        c_area = request.getParameter("c_area");
        width = request.getParameter("width");
        height = request.getParameter("height");
        r_area = request.getParameter("r_area");
    } catch (Exception e) {
        e.printStackTrace();
    }
    if(radius!=null&&c_area!=null){
        out.print("用户选择的图形是圆形<br>");
        out.print("用户输入的圆形半径是："+radius+"<br>");
        out.print("半径为"+radius+"的圆形面积是"+c_area);
    }
    else if(width!=null&&height!=null&&r_area!=null){
        out.print("用户选择的图形是矩形<br>");
        out.print("用户输入的矩形宽是"+width+"高是"+height+"<br>");
        out.print("矩形面积是"+r_area);
    }
    else
    {
        out.print("错误！！！");
    }

%>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/24
  Time: 10:52
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
        radius = String.valueOf(session.getAttribute("r"));
        c_area = String.valueOf(session.getAttribute("c_a"));
        width =  String.valueOf(session.getAttribute("w"));
        height = String.valueOf(session.getAttribute("h"));
        r_area = String.valueOf(session.getAttribute("r_a"));
    } catch (NumberFormatException e) {
        e.printStackTrace();
    }
    if(radius!="null"&&c_area!="null"){
        out.print("用户选择的图形是圆形<br>");
        out.print("用户输入的圆形半径是："+radius+"<br>");
        out.print("半径为"+radius+"的圆形面积是"+c_area);
    }
    else if(width!="null"&&height!="null"&&r_area!="null"){
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

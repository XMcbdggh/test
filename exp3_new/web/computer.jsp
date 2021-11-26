<%@ page import="xiaoming.Circle" %>
<%@ page import="xiaoming.Shape" %>
<%@ page import="xiaoming.Rectangle" %>
<%--
  Created by IntelliJ IDEA.
  User: 25090
  Date: 2021/11/18
  Time: 9:08
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
    String width= null;
    String height= null;

    try {
        radius = request.getParameter("radius");
        width = request.getParameter("width");
        height = request.getParameter("height");
    } catch (Exception e) {
        e.printStackTrace();
    }
    Shape shape;
    if(radius!=null){
            shape=new Circle(Double.parseDouble(radius));
            double c_area=shape.getArea();
            %>
<jsp:forward page="result.jsp">
    <jsp:param name="radius" value="<%=radius%>" />
    <jsp:param name="c_area" value="<%=c_area%>" />
</jsp:forward>
<%
        }
    else if (width!=null&&height!=null){
        shape=new Rectangle(Double.parseDouble(width),Double.parseDouble(height));
        double r_area=shape.getArea();
%>
<jsp:forward page="result.jsp">
    <jsp:param name="width" value="<%=width%>" />
    <jsp:param name="height" value="<%=height%>" />
    <jsp:param name="r_area" value="<%=r_area%>" />
</jsp:forward>
<%
    }
    else
    {
        out.print("错误！！");
    }
%>
</body>
</html>

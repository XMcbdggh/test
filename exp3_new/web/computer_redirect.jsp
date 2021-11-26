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
    radius = request.getParameter("radius");
    width = request.getParameter("width");
    height = request.getParameter("height");
    session.setAttribute("r",radius);
    out.print(session.getAttribute("r"));
    System.out.println(session.getAttribute("r"));
    session.setAttribute("w",width);
    session.setAttribute("h",height);
    Shape shape;
    if(radius!=null){
        shape=new Circle(Double.parseDouble(radius));
        double c_area=shape.getArea();
        session.setAttribute("c_a",c_area);
        response.sendRedirect("result_redirect.jsp");
    }
    else if (width!=null&&height!=null){
        shape=new Rectangle(Double.parseDouble(width),Double.parseDouble(height));
        double r_area=shape.getArea();
        session.setAttribute("r_a",r_area);
        response.sendRedirect("result_redirect.jsp");
    }
    else
    {
        out.print("错误！！");
    }
%>
</body>
</html>

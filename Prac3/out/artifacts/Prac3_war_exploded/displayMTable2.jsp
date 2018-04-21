<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 20/4/2018
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="header.html"%>
<table style="border-collapse: collapse;text-align:center;width:30%;">
<%
    int input = Integer.parseInt(request.getParameter("numberinput"));
    int result;
    for(int i = 1; i < 13; i++){
        result = i * input;

%>

<tr style="border: 1px solid black">
    <td style="text-align:center;border: 1px solid black;width:30%"><%=i + " x " + input%></td>
    <td style="text-align: center;border: 1px solid black;width:30%"><%=result%></td>

</tr>
<%}%>
</table>
<%@include file="footer.html"%>
</body>
</html>

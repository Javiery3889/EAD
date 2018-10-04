<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 22-Jul-18
  Time: 8:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (session.getAttribute("USER") == null){
        response.sendRedirect("login.html");
    } else{

%>
<table style="text-align:center;width:30%;border-collapse:collapse">
    <%
        int result;
        for(int i = 1; i <= 5; i++){
            result = i * 5;

    %>

    <tr style="border: 1px solid black">
        <td style="text-align:center;border: 1px solid black;width:30%"><%out.print(i + " x  5");%></td>
        <td style="text-align: center;border: 1px solid black;width:30%"><%out.print(result);%></td>

    </tr>
    <%}
    }%>
</table>
</body>
</html>

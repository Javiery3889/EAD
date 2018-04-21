<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 19/4/2018
  Time: 8:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table style="text-align:center;width:30%;border-collapse:collapse">
    <%
        int input = Integer.parseInt(request.getParameter("numberinput"));
        int result;
        for(int i = 1; i < 13; i++){
            result = i * input;

    %>

    <tr style="border: 1px solid black">
        <td style="text-align:center;border: 1px solid black;width:30%"><%out.print(i + " x " + input);%></td>
        <td style="text-align: center;border: 1px solid black;width:30%"><%out.print(result);%></td>

    </tr>
    <%}%>
</table>

</body>
</html>

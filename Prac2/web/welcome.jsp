<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 18/4/2018
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Welcome, Lincoln.
<br>
<br>
<table style="text-align:center;width:30%;border-collapse:collapse">
    <%
        int result;
        for(int i = 1; i < 6; i++){
            result = i * 5;

    %>

    <tr style="border: 1px solid black">
        <td style="text-align:center;border: 1px solid black;width:30%"><%=i+" x 5"%></td>
        <td style="text-align: center;border: 1px solid black;width:30%"><%=result%></td>

    </tr>
    <%}%>
</table>


</body>
</html>

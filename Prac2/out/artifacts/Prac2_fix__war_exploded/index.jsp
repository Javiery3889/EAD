<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 18/4/2018
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<h1>Using GET Method to Read Form Data</h1>
<ul>
  <li><p><b>Login ID:</b>
    <%= request.getParameter("loginid")%>
  </p></li>
  <li><p><b>Password:</b>
    <%= request.getParameter("password")%>
  </p></li>
</ul>
</body>
</html>

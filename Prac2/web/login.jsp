<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 18/4/2018
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login form</title>
</head>
<body>
<%if (request.getParameter("login") == null) {
    ;
}else if (request.getParameter("login").equalsIgnoreCase("fail")){
    out.print("Sorry, You have entered an invalid password");
}%>
<form action="validator.jsp" method = "GET">
    Login ID: <input type = "text" name = "loginid">
    <br>
    <br>
    Password: <input type = "password" name = "password">
    <br>
    <input type = "submit" value = "Submit">
</form>


</body>
</html>

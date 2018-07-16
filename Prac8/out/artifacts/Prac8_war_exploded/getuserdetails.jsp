<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 05-Jul-18
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Retrieve User Details</h1>
    <form action="ObtainUserDetailsServlet" method="post">
        Enter userid: <input type="text" name="userid">
        <input type="submit" value="Get Details">
    </form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 22-Jul-18
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="add2cart.jsp" method="post">
        ISBN: <input type="text" name="isbn">
        Title: <input type="text" name="title">
        Author: <input type="text" name="author">
        Publisher: <input type="text" name="publisher">
        Quantity: <input type="text" name="quantity">
        Price: <input type="text" name="price">
        <input type="submit" value="submit">
    </form>
</body>
</html>

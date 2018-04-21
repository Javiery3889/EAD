<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 21/4/2018
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.text.SimpleDateFormat" import="java.util.Date"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");
    Date date = new Date();
    out.println("The date now is "+sdf.format(date));
%>
</body>
</html>

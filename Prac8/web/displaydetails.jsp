<%@ page import="dbaccess.UserDetails" %><%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 05-Jul-18
  Time: 9:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        UserDetails user = (UserDetails)request.getAttribute("userdata");
        if (user!=null){
    %>
        UserID: <%=user.getUserid()%>
        Age: <%=user.getAge()%>
        Gender: <%=user.getGender()%>
    <%
        }
    %>
</body>
</html>

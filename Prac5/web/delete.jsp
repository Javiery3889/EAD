<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 14-Jun-18
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String phoneid = request.getParameter("phoneid");
        String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=Dickfigures123";
        Connection conn = DriverManager.getConnection(connURL);
        PreparedStatement deleteentry = conn.prepareStatement("DELETE FROM inventory WHERE ID = ?");
        deleteentry.setObject(1,phoneid);
        deleteentry.executeUpdate();
        response.sendRedirect("processSearch.jsp?searchString=" + request.getParameter("searchcat"));
        conn.close();
    } catch (Exception e){
        System.err.println(e);
    }
%>
</body>
</html>

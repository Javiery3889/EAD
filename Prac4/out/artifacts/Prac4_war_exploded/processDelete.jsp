<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 22/4/2018
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%Class.forName("com.mysql.jdbc.Driver");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String usertodelete = request.getParameter("userid");
    try{
        String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=Dickfigures123";
        Connection conn = DriverManager.getConnection(connURL);
        PreparedStatement ps = conn.prepareStatement("DELETE FROM login WHERE userid = ?");
        ps.setObject(1,usertodelete);
        ps.executeUpdate();
        out.println(usertodelete + " has been deleted.");
        conn.close();
    } catch (Exception e){
        out.println("User " + usertodelete + " does not exist or has been deleted already.");
    }
%>
</body>
</html>

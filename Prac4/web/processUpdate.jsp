<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 21/4/2018
  Time: 11:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userID = request.getParameter("loginid");
    String newpassword = request.getParameter("password");
    try{
        String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=Dickfigures123";
        Connection conn = DriverManager.getConnection(connURL);
        PreparedStatement ps = conn.prepareStatement("UPDATE login SET password = ? WHERE userid = ?");
        ps.setObject(1,newpassword);
        ps.setObject(2,userID);
        ps.executeUpdate();
        out.println("Password for " + userID + " has been changed");
        conn.close();
    }catch (Exception e){
        out.print("User " + userID + " does not exists");
    }
%>
</body>
</html>

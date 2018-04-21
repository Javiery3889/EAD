<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 21/4/2018
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%--Load a driver to enable JDBC classes to communicate with data source--%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String usertoadd = request.getParameter("loginid");
    String passwordtoadd = request.getParameter("password");
    try{
        String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=Dickfigures123";
        Connection conn = DriverManager.getConnection(connURL);
        PreparedStatement ps = conn.prepareStatement("INSERT INTO login(userid,password) values(?,?)");
        ps.setObject(1,usertoadd);
        ps.setObject(2,passwordtoadd);
        ps.executeUpdate();
        out.println("User " + usertoadd + " added.");
        conn.close();
    }
    catch (Exception e) {
        out.print(usertoadd + " userID already exists");
    }
%>
</body>
</html>

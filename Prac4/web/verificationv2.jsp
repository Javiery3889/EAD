<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 21/4/2018
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
%>
<%
    String usertocheck = request.getParameter("loginid");
    String passwordtocheck = request.getParameter("password");
    String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=Dickfigures123";
    Connection conn = DriverManager.getConnection(connURL);
    PreparedStatement ps = conn.prepareStatement("select password as pass from login where userid = ?");
    ps.setObject(1, usertocheck);
    ResultSet rs = ps.executeQuery();
    while (rs.next()){
        String password = rs.getString("pass");
        if(passwordtocheck.equals(password)){
            response.sendRedirect("displaymembers.jsp?user=" + usertocheck);
        } else {
            response.sendRedirect("index.jsp?login=fail");
        }

    }
    conn.close();
%>
</body>
</html>

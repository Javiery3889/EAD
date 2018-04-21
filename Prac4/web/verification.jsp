<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 21/4/2018
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.Connection" %>
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
    try {
        String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=Dickfigures123";
        Connection conn = DriverManager.getConnection(connURL);
        Statement stmt = conn.createStatement();
        String sqlstr = "Select * FROM login";
        ResultSet rs = stmt.executeQuery(sqlstr);
        String usercheck = request.getParameter("loginid");
        String passcheck = request.getParameter("password");
        boolean check = false;
        while (rs.next()) {
            String id = rs.getString("userid");
            String password = rs.getString("password");
            if (usercheck.equals(id) && passcheck.equals(password)) {
                check = true;
            }
        }
        if (check == true) {
            response.sendRedirect("displaymembers.jsp?user=" + usercheck);
        } else {
            response.sendRedirect("index.jsp?login=fail");
        }
        conn.close();
    } catch (Exception e) {
        System.err.println("Error :" + e);
    }
%>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 15-Jun-18
  Time: 12:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        HttpSession session1 = request.getSession(true);
        String loginstatus = (String)session1.getAttribute("LOGIN-STATUS");
        if(loginstatus == null){
            response.sendRedirect("login.html");
        }
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=Dickfigures123";
            Connection conn = DriverManager.getConnection(connURL);
            PreparedStatement updatephonedetails = conn.prepareStatement("UPDATE inventory set brand = ?, model = ?, functions = ?, quantity = ? where ID = ?");
            updatephonedetails.setObject(1, request.getParameter("brand"));
            updatephonedetails.setObject(2,request.getParameter("model"));
            updatephonedetails.setObject(3,request.getParameter("functions"));
            updatephonedetails.setObject(4,request.getParameter("quantity"));
            updatephonedetails.setObject(5,request.getParameter("phoneid"));
            updatephonedetails.executeUpdate();
            response.sendRedirect("search.jsp");
            conn.close();

        } catch (Exception e){
            System.err.println(e);
        }
    %>
</body>
</html>

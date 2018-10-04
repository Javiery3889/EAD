<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 23/4/2018
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
  <head>
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      try{
        String username = request.getParameter("username");
        String pwcheck = request.getParameter("password");

        String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=Dickfigures123";
        Connection conn = DriverManager.getConnection(connURL);
        PreparedStatement ps = conn.prepareStatement("SELECT password from login WHERE userid = ?");
        ps.setObject(1,username);
        ResultSet rs = ps.executeQuery();
        if (rs.next()){
          String password = rs.getString("password");
          if(pwcheck.equals(password)){
              session.setAttribute("LOGIN-STATUS","YES");
              response.sendRedirect("search.jsp");
          }
          else{
              response.sendRedirect("login.html");
          }
        }
        conn.close();
      }
      catch (Exception e){
          System.err.println("Error:" + e);
    }

    %>
  </body>
</html>

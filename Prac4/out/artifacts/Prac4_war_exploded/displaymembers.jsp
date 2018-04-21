<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 18/4/2018
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.print("Welcome, "+request.getParameter("user"));
%>
<br>
<br>
<table style="text-align:center;width:30%;border-collapse:collapse">
    <%
        int result;
        for(int i = 1; i < 6; i++){
            result = i * 5;

    %>

    <tr style="border: 1px solid black">
        <td style="text-align:center;border: 1px solid black;width:30%"><%=i+" x 5"%></td>
        <td style="text-align: center;border: 1px solid black;width:30%"><%=result%></td>

    </tr>
    <%}%>
</table>
<br>
<br>
<table style="text-align:center;width:30%;border-collapse:collapse">
    <tr style="border: 1px solid black">
        <th style="text-align:center;border: 1px solid black;width:30%">User ID</th>
        <th style="text-align:center;border: 1px solid black;width:30%">Password</th>
    </tr>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        try {
            String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=Dickfigures123";
            Connection conn = DriverManager.getConnection(connURL);
            Statement stmt = conn.createStatement();
            String sqlstr = "Select * FROM login ORDER BY userid desc";
            ResultSet rs = stmt.executeQuery(sqlstr);
            String usercheck = request.getParameter("userid");
            String passcheck = request.getParameter("password");
            while (rs.next()) {
                String id = rs.getString("userid");
                String password = rs.getString("password");
             %>
                <tr style="border: 1px solid black">
                <td style="text-align:center;border: 1px solid black;width:30%"><%=id%></td>
                <td style="text-align: center;border: 1px solid black;width:30%"><%=password%></td>
            <%}
            conn.close();
        } catch (Exception e) {
            System.err.println("Error :" + e);
        }
    %>
</table>


</body>
</html>

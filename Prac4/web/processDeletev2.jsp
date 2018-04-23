<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 22/4/2018
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%Class.forName("com.mysql.jdbc.Driver");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String usertodelete = request.getParameter("userid");

    String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=Dickfigures123";
    Connection conn = DriverManager.getConnection(connURL);
    PreparedStatement checkcol = conn.prepareStatement("select count(*) as total from login where userid = ?");
    checkcol.setObject(1, usertodelete);
    ResultSet rs = checkcol.executeQuery();
    int count = 0;
    while (rs.next()) {
        count += rs.getInt("total");
    }
    if (count == 0) {
        out.print("User " + usertodelete + " does not exists or has been deleted already");
    } else {
        PreparedStatement ps = conn.prepareStatement("DELETE FROM login WHERE userid = ?");
        ps.setObject(1, usertodelete);
        ps.executeUpdate();
        out.println(usertodelete + " has been deleted.\n\n");
    %>
        <table style="text-align:center;width:30%;border-collapse:collapse">
            <tr style="border: 1px solid black">
                <th style="text-align:center;border: 1px solid black;width:30%">User ID</th>
                <th style="text-align:center;border: 1px solid black;width:30%">Password</th>
            </tr>
        <%
        Statement stmt = conn.createStatement();
        String sqlstr = "Select * FROM login ORDER BY userid desc";
        ResultSet displaytable = stmt.executeQuery(sqlstr);
        String usercheck = request.getParameter("userid");
        String passcheck = request.getParameter("password");
        while (displaytable.next()) {
        String id = displaytable.getString("userid");
        String password = displaytable.getString("password");
        %>
        <tr style="border: 1px solid black">
            <td style="text-align:center;border: 1px solid black;width:30%"><%=id%>
            </td>
            <td style="text-align: center;border: 1px solid black;width:30%"><%=password%>
            </td>

    <%}
    }
    conn.close();
    %>
        </table>
</body>
</html>

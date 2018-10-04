<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 14-Jun-18
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="processSearch.jsp" method="POST">
        Search Phone: <input type="text" name="searchString" placeholder="<%=request.getParameter("searchString")%>">
        <input type="submit" value="Submit">
    </form>
    <table style="border-collapse:collapse">
        <th>Brand</th>
        <th>Model</th>
        <th>Functions</th>
        <th>Quantity</th>
        <th>Actions</th>

        <%
            HttpSession session1 = request.getSession(true);
            String loginstatus = (String)session1.getAttribute("LOGIN-STATUS");
            if(loginstatus == null){
                response.sendRedirect("login.html");
            }
            Class.forName("com.mysql.jdbc.Driver");
            try{
                String username = request.getParameter("username");
                String pwcheck = request.getParameter("password");
                String cat = request.getParameter("searchString");
                String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=Dickfigures123";
                Connection conn = DriverManager.getConnection(connURL);
                PreparedStatement gettable = conn.prepareStatement("SELECT ID,brand,model,functions,quantity FROM inventory where functions LIKE ?");
                gettable.setObject(1, "%" + cat + "%");
                ResultSet rs = gettable.executeQuery();
                while (rs.next()){
            %>
        <tr style="border: 1px solid">
            <td style="border: 1px solid"><%=rs.getString(2)%></td>
            <td style="border: 1px solid"><%=rs.getString(3)%></td>
            <td style="border: 1px solid"><%=rs.getString(4)%></td>
            <td style="border: 1px solid"><%=rs.getString(5)%></td>
            <td style="border: 1px solid">
                <form action="update.jsp" method="POST" style="display: inline">
                <input type="submit" value="Update" name="update">
                <input type="hidden" value="<%=rs.getString(1)%>" name="phoneid">
                <input type="hidden" value="<%=request.getParameter("searchString")%>" name="searchcat">
                </form>
                <form action="delete.jsp" method="POST" style="display: inline">
                <input type="submit" name="delete" value="Delete">
                <input type="hidden" value="<%=rs.getString(1)%>" name="phoneid">
                <input type="hidden" value="<%=request.getParameter("searchString")%>" name="searchcat">
                </form>
            </td>
        </tr>
        <%}
                conn.close();
            }
            catch (Exception e){
                System.err.println("Error:" + e);
            }

        %>
    </table>
</body>
</html>

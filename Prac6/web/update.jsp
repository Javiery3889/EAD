<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 14-Jun-18
  Time: 11:23 PM
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
            PreparedStatement getphoneinfo = conn.prepareStatement("SELECT brand, model, functions,quantity FROM inventory where ID =" + request.getParameter("phoneid"));
            ResultSet rs = getphoneinfo.executeQuery();
            if (rs.next()){
                %>
                <form action="processUpdate.jsp" method="POST">
                    Brand: <input type="text" name="brand" value="<%=rs.getString(1)%>" required> <br><br>
                    Model: <input type="text" name="model" value="<%=rs.getString(2)%>" required> <br><br>
                    Functions: <input type="text" name="functions" value="<%=rs.getString(3)%>" required> <br><br>
                    Quantity: <input type="text" name="quantity" value="<%=rs.getString(4)%>" required> <br><br>
                    <input type="hidden" name="phoneid" value="<%=request.getParameter("phoneid")%>">
                    <button type="submit" value="Update Now!">Update Now!</button>
                    <button type="reset" value="Reset">Reset</button>
                </form>

            <%}
            conn.close();
        } catch (Exception e){
            System.err.println(e);
        }
    %>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 21/4/2018
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<body>
<%if (request.getParameter("login") == null) {
  ;
}else if (request.getParameter("login").equalsIgnoreCase("fail")){
  out.print("Sorry, You have entered an invalid userid or password");
}%>

<form action="verification.jsp" method="POST">
  Login ID: <input type="text" name="loginid">
  <br>
  <br>
  Password: <input type="password" name="password">
  <br>
  <input type="submit" value="Submit">
</form>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 20/4/2018
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String[] modulestaken = request.getParameterValues("module");
    if(modulestaken == null){
        out.println("<h2>" + "You have no modules this semester" + "</h2>");

    }else{
        out.println("<h2>You are taking:</h2>");
        for(int i = 0; i < modulestaken.length; i++){

            out.print("<h2><ul>"+"<li>"+modulestaken[i]+"</li>"+"</ul></h2>");
        }
    }
%>
</body>
</html>

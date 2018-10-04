<%@ page import="com.Prac6.servlets.Book" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 22-Jul-18
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    ArrayList<Book> bookArrayList = (ArrayList<Book>)session.getAttribute("book");
    out.println("ISBN | Author | Publisher | Quantity | Price");
    %>
<br>
<%
    for(Book book: bookArrayList){
        out.println(book.getISBN());
        out.println(book.getAuthor());
        out.println(book.getPublisher());
        out.println(book.getQuantity());
        out.println(book.getPrice());
        %>
<br>
<%
    }

%>
<br>
<a href="buybooks.jsp">click to go back to buy books</a>
</body>
</html>

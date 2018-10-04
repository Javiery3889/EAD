<%@ page import="com.Prac6.servlets.Book" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 02-Jul-18
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Book b1 = new Book();
    Book b2 = new Book();
    Book b3 = new Book();
    Book b4 = new Book();
    Book b5 = new Book();

    ArrayList<Book> bookArrayList = new ArrayList<Book>();
    bookArrayList.add(b1);
    bookArrayList.add(b2);
    bookArrayList.add(b3);
    bookArrayList.add(b4);
    bookArrayList.add(b5);
    out.print(bookArrayList.get(1));
%>
<%--<jsp:useBean id="Book" class="com.Prac6.servlets.Book">--%>
    <%--<jsp:setProperty name = "Book" property = "ISBN" value = "Zara"/>--%>
    <%--<jsp:setProperty name = "Book" property = "title" value = "Ali"/>--%>
    <%--<jsp:setProperty name = "Book" property = "author" value = "test"/>--%>
    <%--<jsp:setProperty name = "Book" property = "publisher" value = "test"/>--%>
    <%--<jsp:setProperty name = "Book" property = "quantity" value = "2"/>--%>
    <%--<jsp:setProperty name = "Book" property = "price" value = "2.2"/>--%>
<%--</jsp:useBean>--%>

<%--<jsp:useBean id="Book2" class="com.Prac6.servlets.Book">--%>
    <%--<jsp:setProperty name = "Book2" property = "ISBN" value = "fuck"/>--%>
    <%--<jsp:setProperty name = "Book2" property = "title" value = "Ali"/>--%>
    <%--<jsp:setProperty name = "Book2" property = "author" value = "test"/>--%>
    <%--<jsp:setProperty name = "Book2" property = "publisher" value = "test"/>--%>
    <%--<jsp:setProperty name = "Book2" property = "quantity" value = "2"/>--%>
    <%--<jsp:setProperty name = "Book2" property = "price" value = "2.2"/>--%>

<%--</jsp:useBean>--%>
<%--<jsp:getProperty name = "Book" property = "ISBN"/>--%>
<%--<jsp:getProperty name = "Book2" property = "ISBN"/>--%>
</body>
</html>

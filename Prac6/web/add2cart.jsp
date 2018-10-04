<%@ page import="com.Prac6.servlets.Book" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 22-Jul-18
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<Book> bookArrayList;
    if (session.getAttribute("book") == null) {
        bookArrayList = new ArrayList<Book>();
    }
    else {
        bookArrayList = (ArrayList<Book>) session.getAttribute("book");
    }
    String ISBN = request.getParameter("isbn");
    String title = request.getParameter("title");
    String author = request.getParameter("author");
    String publisher = request.getParameter("publisher");
    int quantity = Integer.parseInt(request.getParameter("quantity"));
    double price = Double.parseDouble(request.getParameter("price"));

    Book book = new Book();

    book.setISBN(ISBN);
    book.setTitle(title);
    book.setAuthor(author);
    book.setPublisher(publisher);
    book.setQuantity(quantity);
    book.setPrice(price);

    bookArrayList.add(book);
    session.setAttribute("book",bookArrayList);
    response.sendRedirect("displayCart.jsp");
%>
</body>
</html>

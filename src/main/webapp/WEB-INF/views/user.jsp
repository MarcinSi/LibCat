<%--
  Created by IntelliJ IDEA.
  User: hensa
  Date: 18.11.2018
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <title>Strona użytkownika</title>
        </head>
<body>
<h1>STRONA UŻYTKOWNIKA</h1>

<jsp:include page="menu.jsp" />

<h3>DANE UŻYTKOWNIKA:</h3>
<b>Name:</b> ${user.firstName} <br />
<b>Surname:</b>${user.secondName}<br />
<b>City:</b>${user.city}<br />
<b>Phone:</b>${user.phone}<br />
<b>Email:</b> ${user.email} <br />
<br />

<table>
    <tr>
        <th>Id</th>
        <th>Author</th>
        <th>Title</th>
        <th>Gender</th>
        <th>Publisher</th>
        <th>Year</th>
        <th>Pages</th>
        <th>ISBN</th>

    </tr>
    <c:forEach items="${books}" var="books">

        <tr>

            <td>${books.id}</td>
            <td>${books.author}</td>
            <td>${books.title}</td>
            <td>${books.genre}</td>
            <td>${books.publisher}</td>
            <td>${books.year}</td>
            <td>${books.pages}</td>
            <td>${books.isbn}</td>
            <td><a href="/user/edit/${book.id}">Edytuj</a>, <a href="/book/delete/${book.id}">Usuń</a></td>
        </tr>

    </c:forEach>

</table>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: hensa
  Date: 19.11.2018
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <title>Szukaj książkę:</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<br>
WYSZUKIWANIE:
<br>
<br>
<form:form method="post" modelAttribute="book">
    Author : <br><form:input path="author"/><br>
    <form:errors path="author"/>
    Title : <br><form:input path="title"/><br>
    <form:errors path="title"/>
    Genre : <br><form:select path="genre" items="${genre}"/><br>
    <form:errors path="genre"/>
    User : <br><form:input path="user"/><br>
    <form:errors path="publisher"/>
    City : <br><form:input path="city"/><br>

    <br>
    <input type="Submit"/>

</form:form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>

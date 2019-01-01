<%--
  Created by IntelliJ IDEA.
  User: hensa
  Date: 18.11.2018
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
     <title>Dodajj książkę</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp"/>
<br>
<h3>DODAWANIE KSIĄŻKI:</h3>
<br>
<br>
<form:form class="text-center form-horizontal form-inline" method="post" modelAttribute="book">
            Nazwisko : <br><form:input path="author"/><br>
            <form:errors path="author"/>
            Tytuł : <br><form:input path="title"/><br>
            <form:errors path="title"/>
            Gatunek : <br><form:select path="genre" items="${genre}"/><br>
            <form:errors path="genre"/>
            Wydawca : <br><form:input path="publisher"/><br>
            <form:errors path="publisher"/>
            Rok : <br><form:input path="year"/><br>
            <form:errors path="year"/>
            Ilość stron : <br><form:input path="pages"/><br>
            <form:errors path="pages"/>
            ISBN : <br><form:input path="isbn"/><br>
            <form:errors path="isbn"/>
            <form:hidden path="id"/>
            <br>
            <input type="Submit"/>

</form:form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>

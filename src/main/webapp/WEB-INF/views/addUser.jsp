<%--
  Created by IntelliJ IDEA.
  User: hensa
  Date: 04.11.2018
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Dodawanie użytkownika</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<br>
DODAWANIA UŻYTKOWNIKA
<br>
<br>
<form:form class="text-center form-horizontal form-inline" method="post" modelAttribute="user">
    Login : <br><form:input path="login"/><br>
    <form:errors path="login"/>
    Password : <br><form:input path="password"/><br>
    <form:errors path="password"/>
    Name : <br><form:input path="firstName"/><br>
    <form:errors path="firstName"/>
    Surname : <br><form:input path="lastName"/><br>
    <form:errors path="lastName"/>
    City : <br><form:input path="city"/><br>
    <form:errors path="city"/>
    Phone : <br><form:input path="phone"/><br>
    <form:errors path="phone"/>
    Email : <br><form:input path="email"/><br>
    <form:errors path="email"/>

    <form:hidden path="id"/>
    <input type="Submit"/>

</form:form>

</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</html>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 20.11.18
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@	taglib	prefix="form" uri="http://www.springframework.org/tags/form"	%>


<html>
<head>
    <title>Register</title>

</head>
<body>
    <form:form method="post" modelAttribute="user">
        <table id="register">
            <tr>
            <td class="user">Imię</td>
            <td><form:input path="firstName"/><form:errors path="firstName"/></td>
        </tr>
            <tr>
                <td class="user">Nazwisko</td>
                <td><form:input path="lastName"/><form:errors path="lastName"/></td>
            </tr>
            <tr>
                <td class="user">Telefon</td>
                <td><form:input path="phone"/><form:errors path="phone"/></td>
            </tr>
            <tr>
                <td class="user">Miasto</td>
                <td><form:input path="city"/><form:errors path="city"/></td>
            </tr>
            <tr>
                <td class="user">Email</td>
                <td><form:input path="email" /><form:errors path="email"/></td>
            </tr>
            <tr>
                <td class="user">Hasło</td>
                <td><form:password path="password"/><form:errors path="password"/></td>
            </tr>
            <tr>
                <td class="user">Powtórz hasło</td>
                <td><input class="input" type="password" name="repassword">${wrong}</td>
            </tr>

            <tr>
                <td></td>
                <td align="center">
                    <input type="submit" value="zarejestruj się" class="button submit">
                </td>
            </tr>
        </table>
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

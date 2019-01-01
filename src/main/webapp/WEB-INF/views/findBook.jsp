<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Szukaj książkę:</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="container">

    <h3>SZUKAJ KSIĄŻKĘ:</h3>
    <div>
        <form class="text-center form-horizontal form-inline" method="post" action="findbookbyauthor">
            Autor :<input name="authorName"/>
            <input type="Submit"/>
        </form>
    </div>
    <div>
        <form class=" text-center form-horizontal form-inline" method="post" action="findbookbytitle">
            Tytuł :<input name="title"/>
            <input type="Submit"/>
        </form>
    </div>
    <div>
        <form method="post" action="findbookbygenre" class="text-center form-inline form-horizontal">
            Gatunek :<select name="genre">
            <c:forEach items="${genre}" var="genre">
                <option value="${genre}">${genre}</option>
            </c:forEach>
        </select>
            <input type="Submit"/>
        </form>
    </div>
    <div>
        <h4>Znalezione książki:</h4>
        <table class="table table-striped table-hover ">
            <tr>
                <th>Autor</th>
                <th>Tytuł</th>
                <th>Wydawca</th>
                <th>Rok wydania</th>
                <th>Ilość stron</th>
                <th>Gatunek</th>
                <th>ISBN</th>
                <th>Właściciel</th>
            </tr>
            <div>${searchQuery}</div>
            <c:choose>
            <c:when test="${empty foundBooks}">
                <div><c:out value="Brak wyników!"></c:out></div>
            </c:when>
            <c:otherwise>
            <c:forEach items="${foundBooks}" var="book">
                <tr>
                    <td>${book.author}</td>
                    <td>${book.title}</td>
                    <td>${book.publisher}</td>
                    <td>${book.year}</td>
                    <td>${book.pages}</td>
                    <td>${book.genre}</td>
                    <td>${book.isbn}</td>
                </tr>
            </c:forEach>
        </table>
        </c:otherwise>
        </c:choose>
    </div>

</div>
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

<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 04/13/2021
  Time: 7:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-container">

    <table class="w3-table w3-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Category</th>
        </tr>
        <c:forEach var="b" items="${requestScope.books}">
            <tr>
                <td>${b.id}</td>
                <td>${b.name}</td>
                <td>${b.price}</td>
                <td>${b.quantity}</td>
                <td>${b.category.name}</td>
                <td>
                    <c:url var="url" value="book">
                        <c:param name="id" value="${b.id}"/>
                    </c:url>
                    <a href="${url}">Detail</a>
                </td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>

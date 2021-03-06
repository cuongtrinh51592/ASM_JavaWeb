<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 04/17/2021
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<c:set var="b" value="${requestScope.book}" />

<div class="w3-container">

    <table class="w3-table w3-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Author</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Category</th>
        </tr>
        <tr>
            <td>${b.id}</td>
            <td>${b.name}</td>
            <th>${b.authorEntity.name}</th>
            <td>${b.price}</td>
            <td>${b.quantity}</td>
            <td>${b.categoryEntity.name}</td>

        </tr>
    </table>
</div>
</body>
</html>

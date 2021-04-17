<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 04/17/2021
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-container">
    <h2 class="col-8 offset-2 text-center font-weight-bold my-3">Book Management</h2>
    <c:url var="url" value="create-book">
        <c:param name="id" value="${b.id}"/>
    </c:url>
    <a href="${url}" class="button btn btn-primary">Create</a>
    <table class="w3-table w3-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Details</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="b" items="${requestScope.books}">
            <tr>
                <td>${b.id}</td>
                <td>${b.name}</td>
                <td>${b.price}</td>
                <td>
                    <c:url var="url" value="book">
                        <c:param name="id" value="${b.id}"/>
                    </c:url>
                    <a href="${url}">Detail</a>
                </td>
                <td>
                    <c:url var="url" value="update-book">
                        <c:param name="id" value="${b.id}"/>
                    </c:url>
                    <a href="${url}" class="button btn btn-primary">Update</a>
                </td>
                <td>
                    <form class="m-0" action="${pageContext.request.contextPath}/book" method="post">
                        <button name="id" value="${b.id}" class="button btn btn-primary" type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>

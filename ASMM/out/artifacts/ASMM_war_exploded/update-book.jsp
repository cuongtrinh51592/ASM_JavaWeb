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
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<c:set var="b" value="${requestScope.book}"/>

<div class="container">
    <div class="row">
        <h2 class="col-8 offset-2 text-center font-weight-bold my-3">Book Details</h2>
        <a class="col-2 btn btn-primary align-self-center my-3" href="${pageContext.request.contextPath}/">Back</a>
        <form class="col-12" action="${pageContext.request.contextPath}/update-book" method="post">
            <input type="hidden" name="id" value="${b.id}">
            <div class="form-group">
                <label>Name :</label>
                <input class="form-control" type="text" name="name" value="${b.name}">
            </div>
            <div class="form-group">
                <label>Author :</label>
                <input class="form-control" type="text" name="authorID" value="${b.authorID}">
            </div>

            <div class="form-group">
                <label>Price :</label>
                <input class="form-control" type="text" name="price" value="${b.price}">
            </div>
            <div class="form-group">
                <label>Quantity :</label>
                <input class="form-control" type="text" name="quantity" value="${b.quantity}">
            </div>
            <div class="form-group">
                <label>Category :</label>
                <input class="form-control" type="text" name="categoryID" value="${b.categoryID}">
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</div>
</body>
</html>

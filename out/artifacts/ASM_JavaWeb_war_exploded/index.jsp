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
<body>
<div class="w3-container">

    <div class="col-md-6 order-md-last d-flex">
        <form action="/create" class="bg-white p-5 contact-form" method="post">
            <div class="form-group">
                <input type="text" name="name" class="form-control" placeholder="Book Name" required>
            </div>
            <div class="form-group">
                <input type="text" name="price" class="form-control" placeholder="Book Price" required>
            </div>
            <div class="form-group">
                <input type="text" name="quantity" class="form-control" placeholder="Book Quantity" required>
            </div>
            <div class="form-group">
                <input type="text" name="categoryID" class="form-control" placeholder="Book categoryID" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Save" class="btn btn-primary py-3 px-5">
            </div>
        </form>

    </div>

    <h1 style="text-align: center">Bookshop Management</h1>

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

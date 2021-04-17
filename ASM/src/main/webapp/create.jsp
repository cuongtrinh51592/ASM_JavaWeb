<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/15/2021
  Time: 8:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="col-md-6 order-md-last d-flex">
    <form action="home" class="bg-white p-5 contact-form" method="post">
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
</body>
</html>

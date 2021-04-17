<%--
  Created by IntelliJ IDEA.
  User: Huy
  Date: 4/17/2021
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html>
<head>
    <title><dec:title /></title>
</head>
<body>
<div id="wrapper">
    <%@include file="sidebar.jsp"%>
    <div id="content-wrapper" class="d-flex flex-column">
        <%@include file="header.jsp"%>
        <dec:body/>
        <%@include file="footer.jsp"%>
    </div>
</div>
</body>
</html>

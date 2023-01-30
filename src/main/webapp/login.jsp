<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: matiassilva
  Date: 1/30/23
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="/partials/head.jsp"%>
<body>
<%@include file="/partials/navbar.jsp"%>

<c:choose>
    <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
        <% response.sendRedirect("/profile.jsp"); %>
    </c:when>
    <c:when test="${param.username != null && param.password != null}">
        <% response.sendRedirect("/login.jsp");%>
    </c:when>
</c:choose>
<form action="/login.jsp" method="post">
    <label for="username">Username:</label>
    <input type="text" name="username" id="username">
    <label for="password">Password:</label>
    <input type="password" name="password" id="password">
    <button type="submit">Sign in</button>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: matiassilva
  Date: 1/26/23
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Test</title>
</head>
<body>
    <%!
        String name = "Icon";
        int count = 0;
    %>
    <h1>Hello From <%= name %>!</h1>
    <h1>15 + 15 = <%= 15 + 15 %></h1>
    <h1>Count: <%= count++ %></h1>

<%@include file="login-form.jsp"%>

</body>
</html>
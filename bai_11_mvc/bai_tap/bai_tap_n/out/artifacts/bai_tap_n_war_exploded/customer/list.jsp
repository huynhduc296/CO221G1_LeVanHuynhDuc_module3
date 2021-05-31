<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 30/05/2021
  Time: 6:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
<h1>Customer management</h1>
<p>
    <a href="customer?action=create">Create new Customer</a>
</p>
<table border="1px">
    <tr>
        <td>NoOfOder</td>
        <td>name</td>
        <td>address</td>
    </tr>

    <c:forEach items="${customers}" var="customer" varStatus="loop">
    <tr>
        <td>${loop.index+1}</td>
        <td><a href="customer?action=view&id=${customer.id}"></a>${customer.name}</td>
        <td>${customer.address}</td>
        <td><a href="customer?action=edit&id${customer.id}">edit</a></td>
        <td><a href="customer?action=delete&id${customer.id}">delete</a></td>
    </tr>
    </c:forEach>

</table>
    <form action="/customers">
        <div>
            <input type="text" placeholder="tim kiem" name="searchName">
            <input type="submit"id="submit" name="action" value="search">
        </div>
    </form>
</div>
</body>
</html>

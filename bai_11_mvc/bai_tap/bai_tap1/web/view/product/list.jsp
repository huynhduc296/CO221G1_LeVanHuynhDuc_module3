<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 28/05/2021
  Time: 9:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product Management</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<table border="1">
    <tr>
        <td>NoOfOder</td>
        <td>Name</td>
        <td>price</td>
        <td>description</td>
        <td>producer</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product" varStatus="loop">
        <tr>
            <td>${loop.index+1}</td>
            <td><a href="/products?action=view&id=${customer.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<label>Tìm Kiếm: </label><br/>
<form action="/products">
    <input type="text" placeholder="Tìm Kiếm theo Tên" name="searchName">
    <input type = "submit" id = "submit" name="action" value = "search"/>
</form>
</body>
</html>


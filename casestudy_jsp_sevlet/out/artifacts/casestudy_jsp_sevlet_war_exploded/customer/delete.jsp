<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 03/06/2021
  Time: 5:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Delete customers</h1>
<p>
    <c:if test='${message != null}'>
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/customer">Back to list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Customers information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${customer.name}</td>
            </tr>
            <tr>
                <td>Email: </td>
                <td>${customer.email}</td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Delete Customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 05/06/2021
  Time: 2:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Delete employee</h1>
<p>
    <c:if test='${message != null}'>
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/employee">Back to list</a>
</p>
<form method="post">
    <fieldset>
        <legend>employee information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${employee.name}</td>
            </tr>
            <tr>
                <td>Email: </td>
                <td>${employee.email}</td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Delete employee"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
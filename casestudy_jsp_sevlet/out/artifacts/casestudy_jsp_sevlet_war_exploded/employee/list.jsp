<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 04/06/2021
  Time: 8:32 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</head>
<body>
<div>
    <div style="margin-left: 5%">
        <h1>Customer Management</h1>
        <p>
            <a href="/employee?action=add">add new Employee</a>
        </p>
        <p>
            <a href="/employee?action=sort">sort by name</a>
        </p>
    </div>
</div>
<div class="container" style="width: 80%" >
    <table class="table table-dark">
        <tr>
            <td>NoOfOder</td>
            <th>Name</th>
            <th>birthday</th>
            <th>levelId</th>
            <th>email</th>
            <th>phone</th>
            <th>address</th>
        </tr>
        <c:forEach items='${employee}' var="employee" varStatus="loop">
            <tr>
                <td>${loop.index+1}</td>
                <td>${employee.name}</td>
                <td>${employee.birthday}</td>
                <td>${employee.levelId}</td>
                <td>${employee.email}</td>
                <td>${employee.phone}</td>
                <td>${employee.address}</td>
                <td><a href="/customer?action=edit&id=${employee.id}">edit</a></td>
                <td><a href="/customer?action=delete&id=${employee.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <div>
        <form action="/employee">
            <div class="form-group row">
                <input class="form-control-plaintext" type="text" placeholder="Tìm kiếm theo country" name="search">
                <br>
                <input type = "submit" id = "submit" name="action" value = "search"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>

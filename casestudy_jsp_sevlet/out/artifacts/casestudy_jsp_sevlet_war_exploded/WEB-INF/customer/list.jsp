<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 30/05/2021
  Time: 11:10 CH
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
<div class="container" style="width: 80%">
    <h1>Product Management</h1>
    <p>
        <a href="/products?action=create">Create new product</a>
    </p>
    <table class="table table-dark">
        <tr>
            <td>NoOfOder</td>
            <td>ServiceName</td>
            <td>ServiceArea</td>
            <td>ServiceCost</td>
            <td>ServiceMaxPeople</td>
            <td>ServiceType</td>
            <td>ServiceName</td>
        </tr>

    </table>
    <div>
        <form action="/products">
            <div class="form-group row">
                <input class="form-control-plaintext" type="text" placeholder="Tìm Kiếm theo Tên" name="searchName">
                <br>
                <input type = "submit" id = "submit" name="action" value = "search"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>

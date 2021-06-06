<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 03/06/2021
  Time: 5:18 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="header">
    <h1>User Management</h1>
    <h2>
        <a href="customer?action=customer">Back to list</a>
    </h2>
</div>


<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Customer</h2>
            </caption>
            <tr>
                <th> CustomerCode:</th>
                <td>
                    <input type="text" name="code" id="code" />
                </td>
            </tr>
            <tr>
                <th>idTypeCustomers:</th>
                <td>
                    <select name="typeId" id="typeId">
                        <option value="1">diamond</option>
                        <option value="2">platinium</option>
                        <option value="3">gold</option>
                        <option value="4">silver</option>
                        <option value="5">member</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th> Name:</th>
                <td>
                    <input type="text" name="name" id="name" />
                </td>
            </tr>
            <tr>
                <th>birthday:</th>
                <td>
                    <input type="text" name="birthday" id="birthday" />
                </td>
            </tr>
            <tr>
                <th>
                    Gender
                </th>
                <td>
                    <input type="radio" name="gender" value="male"> Male<br>
                    <input type="radio" name="gender" value="female"> Female<br>
                    <input type="radio" name="gender" value="gay"> Other
                </td>
            </tr>
            <tr>
                <th>card:</th>
                <td>
                    <input type="text" name="card" id="card" />
                </td>
            </tr>
            <tr>
                <th>phone number:</th>
                <td>
                    <input type="text" name="phone" id="phone"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" id="email" />
                </td>
            </tr>
            <tr>
                <th>address:</th>
                <td>
                    <input type="text" name="address" id="address" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" name="action" value="create"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
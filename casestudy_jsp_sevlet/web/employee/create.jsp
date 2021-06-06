<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 05/06/2021
  Time: 1:48 CH
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
        <a href="employee?action=employee">Back to list</a>
    </h2>
</div>


<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Customer</h2>
            </caption>
            <tr>
                <th> EmployeeName:</th>
                <td>
                    <input type="text" name="name" id="name" />
                </td>
            </tr>
            <tr>
                <th>PositionId:</th>
                <td>
                    <input type="text" name="positionId" id="positionId" />
                </td>
            </tr>
            <tr>
                <th> Employee_level_id:</th>
                <td>
                    <input type="text" name="levelId" id="levelId" />
                </td>
            </tr>
            <tr>
                <th>department_id:</th>
                <td>
                    <input type="text" name="departmentId" id="departmentId" />
                </td>
            </tr>
            <tr>
                <th>date_of_birth:</th>
                <td>
                    <input type="text" name="birthday" id="birthday" />
                </td>
            </tr>
            <tr>
                <th>idCard:</th>
                <td>
                    <input type="text" name="idCard" id="idCard"/>
                </td>
            </tr>
            <tr>
                <th>salary:</th>
                <td>
                    <input type="text" name="salary" id="salary" />
                </td>
            </tr>
            <tr>
                <th>phone_number:</th>
                <td>
                    <input type="text" name="phone_number" id="phone_number" />
                </td>
            </tr>
            <tr>
                <th>email:</th>
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

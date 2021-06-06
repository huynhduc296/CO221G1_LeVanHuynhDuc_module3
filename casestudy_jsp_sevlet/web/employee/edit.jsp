<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 05/06/2021
  Time: 2:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<div class="header">
    <h1>User Management</h1>
    <h2>
        <a href="/employee">Back to list</a>
    </h2>
</div>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Customer
                </h2>
            </caption>
            <tr>
                <th>EmployeeName:</th>
                <td><input type="text" name="name" size="45" value='${employee.name}'></td>
            </tr>
            <tr>
                <th>PositionId:</th>
                <td><input type="text" name="positionId" size="45" value='${employee.positionId}'></td>
            </tr>
            <tr>
                <th>Employee_level_id:</th>
                <td><input type="text" name="levelId" size="45" value='${employee.levelId}'></td>
            </tr>
            <tr>
                <th>department_id:</th>
                <td><input type="text" name="departmentId" size="45" value='${employee.departmentId}'></td>
            </tr>
            <tr>
                <th>Birthday:</th>
                <td><input type="text" name="birthday" size="45" value='${employee.birthday}'></td>
            </tr>
            <tr>
                <th>idCard:</th>
                <td><input type="text" name="idCard" size="45" value='${employee.idCard}'></td>
            </tr>
            <tr>
                <th> salary :</th>
                <td><input type="text" name="salary" size="45" value='${employee.salary}'></td>
            </tr>
            <tr>
                <th>PhoneNumber:</th>
                <td><input type="text" name="phone" size="45" value='${employee.phone}'></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><input type="text" name="email" size="45" value='${employee.email}'></td>
            </tr>
            <tr>
                <th>address:</th>
                <td><input type="text" name="address" size="45" value='${employee.address}'></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit"  value="edit"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

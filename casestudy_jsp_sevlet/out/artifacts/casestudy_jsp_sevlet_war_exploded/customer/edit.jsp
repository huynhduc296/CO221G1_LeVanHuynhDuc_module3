<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 03/06/2021
  Time: 5:16 CH
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
        <a href="/customer">Back to list</a>
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
                <th>Customer code id:</th>
                <td><input type="text" name="code" size="45" value='${customer.code}'></td>
            </tr>
            <tr>
                <th>Customer type id:</th>
                <td><input type="text" name="typeId" size="45" value='${customer.typeId}'></td>
            </tr>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="name" size="45" value='${customer.name}'></td>
            </tr>
            <tr>
                <th>Birthday:</th>
                <td><input type="text" name="birthday" size="45" value='${customer.birthday}'></td>
            </tr>
            <tr>
                <th>Gender:</th>
                <td><input type="text" name="gender" size="45" value='${customer.gender}'></td>
            </tr>
            <tr>
                <th> IdCard :</th>
                <td><input type="text" name="idCard" size="45" value='${customer.idCard}'></td>
            </tr>
            <tr>
                <th>PhoneNumber:</th>
                <td><input type="text" name="phone" size="45" value='${customer.phone}'></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><input type="text" name="email" size="45" value='${customer.email}'></td>
            </tr>
            <tr>
                <th>address:</th>
                <td><input type="text" name="address" size="45" value='${customer.address}'></td>
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
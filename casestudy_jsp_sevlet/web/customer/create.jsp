<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 03/06/2021
  Time: 5:18 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="header">
    <h1>User Management</h1>
    <h2>
        <a href="/customers?action=customer">List All Users</a>
    </h2>
</div>


<div align="center">
    <form method="post" action="/customers">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>User Name:</th>
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
                <th>card:</th>
                <td>
                    <input type="text" name="card" id="card" />
                </td>
            </tr>
            <tr>
                <th>phone number:</th>
                <td>
                    <input type="text" name="phoneNumber" id="phoneNumber"/>
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
                <th>idTypeCustomers:</th>
                <td>
                    <input type="text" name="type_id" id="type_id" />
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
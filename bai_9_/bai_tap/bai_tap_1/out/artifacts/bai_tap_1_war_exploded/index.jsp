<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 26/05/2021
  Time: 5:21 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<form action="/calculate" method="post">
  <label>Product Description</label><br>
  <input type="text" name="product"><br><br>
  <label>List Price</label><br>
  <input type="text" name="price" value="0"><br><br>
  <label>Discount Percent</label><br>
  <input type="text" name="discount" value="0"><br><br>
  <input type="submit" value="Calculate Discount">
</form>
</body>
</html>

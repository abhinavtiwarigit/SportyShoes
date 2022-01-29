<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes</title>
</head>
<body>
	<h1>Welcome to Sporty Shoes</h1>
	<h2>Hello, ${username}</h2>
	<div align="center">
		<h3>Your Order Details</h3>
		<h3>Order #: ${orderid}</h3>
	</div>
	<div align="right">
		<a href="/index">Sign Out</a>
	</div>
	<div align="right">
		<a href="/userPage?&username=<c:out value='${username}' />">Continue Shopping</a>
	</div>
	<div align="center">
		<form>
			<table border="1" cellpadding="5">
				<caption><h3>Order Details</h3></caption>
	            <tr>
	                <th>Brand</th>
	                <th>Category</th>
	                <th>Size</th>
	                <th>Price</th>
	            </tr>
	            <c:forEach var="orderdetail" items="${orderdetail}">
	                <tr>
	                    <td><c:out value="${orderdetail.brandname}" /></td>
	                    <td><c:out value="${orderdetail.gender}" /></td>
	                    <td><c:out value="${orderdetail.size}" /></td>
	                    <td><c:out value="${orderdetail.price}" /></td>
	                </tr>	                
	            </c:forEach>
	            <tr>
	            	<th>Order Total</th>
	            	<th></th>
	            	<th></th>
	            	<td>${ordertotal}</td>
	            </tr>
			</table>
		</form>
	</div>
</body>
</html>
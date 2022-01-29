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
	<h2>List of Shoes</h2>
	<div align="right">
		<a href="/adminpage">Back to Admin Page</a>
	</div>
	<div align="center">
		<form action="/editproduct" method="post">
			<table border="1" cellpadding="5">
				<caption><h2>List of Shoes</h2></caption>
	            <tr>
	                <th>Brand</th>
	                <th>Category</th>
	                <th>Size</th>
	                <th>Price</th>
	                <th>Select Product</th>
	            </tr>
	            <c:forEach var="products" items="${products}">
	                <tr>
	                    <td><c:out value="${products.brandname}" /></td>
	                    <td><c:out value="${products.gender}" /></td>
	                    <td><c:out value="${products.size}" /></td>
	                    <td><c:out value="${products.price}" /></td>
	                    <td>
	                    	<a href="/editproduct?pid=<c:out value='${products.id}' />">Edit Info</a>
	                    </td>
	                </tr>
	            </c:forEach>
			</table>
		</form>
	</div>
</body>
</html>
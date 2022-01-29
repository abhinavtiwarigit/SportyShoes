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
	<h3>List of Shoes</h3>
	<div align="right">
		<a href="/index">Sign Out</a><br/>
		<a href="/viewcart?lid=<c:out value='${username}' />">View Cart</a><br/>
	</div>
	<div align="center">
		<form action="/addToCart" method="post">
			<table border="1" cellpadding="5">
				<caption><h2>List of Shoes</h2></caption>
	            <tr>
	                <th>Brand</th>
	                <th>Category</th>
	                <th>Size</th>
	                <th>Price</th>
	                <th></th>
	            </tr>
	            <c:forEach var="products" items="${products}">
	                <tr>
	                    <td><c:out value="${products.brandname}" /></td>
	                    <td><c:out value="${products.gender}" /></td>
	                    <td><c:out value="${products.size}" /></td>
	                    <td><c:out value="${products.price}" /></td>
	                	<td>
	                		<a href="/addToCart?pid=<c:out value='${products.id}' />&lid=<c:out value='${username}' />&pr=<c:out value='${products.price}' />&bn=<c:out value='${products.brandname}' />&gd=<c:out value='${products.gender}' />&sz=<c:out value='${products.size}' />">Add to Cart</a>
	                	</td>
	                </tr>	                
	            </c:forEach>
			</table>
		</form>
	</div>
</body>
</html>
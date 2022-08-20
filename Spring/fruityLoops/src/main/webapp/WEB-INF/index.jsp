<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Fruity Loops</title>
</head>
<body>
	<h1 class="text-center">Fruits Store</h1>
	<table class=" w-50 table table-hover col-6 m-auto border border-5 border-danger table table-sm table-border text-center">
  <thead>
    <tr>
		<th>Name</th>
		<th>Price</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    
		<c:forEach items="${fruitsArray}" var="item">
		<tr>
			<td class="m-auto">${item.getName()}</td>
			<td class="m-auto">${item.getPrice()}</td>
		</tr>
		</c:forEach>
		<!-- OR  -->
<%-- 		<c:forEach items="${fruitsArray}" var="item">
		<tr>
			
			<td class="m-auto"><c:out value="${item.name}"/></td>
			<td class="m-auto"><c:out value="${item.price}"/></td>

		</tr>
		</c:forEach>
		 --%>
    </tr>
  </tbody>
</table>
</body>
</html>
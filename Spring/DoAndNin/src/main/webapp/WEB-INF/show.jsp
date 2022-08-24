<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
      	<div class="container mt-3 border border-dark border-5 p-5 bg-light">
		<div class="d-flex justify-content-between align-items center">
			<h1>${dojo.name} Location Ninjas </h1>
			<a href="/new/ninja">Add Ninja</a>
		</div>
		<table class="table ">
			<thead>
				<tr>
					<td>ID</td>
					<td>First Name</td>
					<td>Last Name</td>
					<td>Age</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dojoNinjas}" var="ninja">
			<c:if test="${ninja.getDojo().getId() == dojo.id }">
					<tr>
						<td>${ninja.getDojo().getId() }</td>
						<td>${ninja.getFirst_name() }</td>
						<td>${ninja.getLast_name() }</td>
						<td>${ninja.getAge() }</td>
					</tr>
			</c:if>
				</c:forEach>
			</tbody>
		</table>
		
			



	</div>
	
	
</body>
</html>
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
			<h1>Add new Ninja </h1>
		</div>

		<form:form action="/add_ninja" method="post"
			modelAttribute="newNinja" class="w-50 mt-3 m-auto">
			
			<div>
			<form:select path="dojo">
			<c:forEach items="${allDojo}" var="d">
				<form:option value="${d.id}">${d.name}</form:option>
			</c:forEach>
			
			</form:select>
			</div>

			
			
			<div class="form-group mb-3">
				<form:label path="first_name">First Name:</form:label>
				<form:input path="first_name" class="form-control" />
				<form:errors path="first_name" class="text-danger" />
			</div>
			<div class="form-group mb-3">
				<form:label path="last_name">Last Name:</form:label>
				<form:input path="last_name" class="form-control" />
				<form:errors path="last_name" class="text-danger" />
			</div>
			<div class="form-group mb-3">
				<form:label path="age">Age:</form:label>
				<form:input path="age" type="number" class="form-control" />
				<form:errors path="age" class="text-danger" />
			</div>

			<div class="d-flex justify-content-center">
				<input type="submit" value="Submit" class="btn btn-primary" />
			</div>
		</form:form>
	</div>
</body>
</html>
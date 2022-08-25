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
    <title>Edit Book</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   <div class="container mt-3 border border-5 border-dark p-5 bg-light">
		<div class="d-flex justify-content-between align-items-center">
			<h1>Change Your Entry</h1>
			<a href="/welcome">back to shelves</a>
		</div>

		<form:form action="/book/${bookEdit.id}/edit" method="post"
			modelAttribute="bookEdit" class="w-50 mt-3">
			<div class="form-group mb-3">
				<form:label path="title">Title:</form:label>
				<form:input path="title" class="form-control" />
				<form:errors path="title" class="text-danger" />
			</div>
			<div class="form-group mb-3">
				<form:label path="author">Author:</form:label>
				<form:input path="author" class="form-control" />
				<form:errors path="author" class="text-danger" />
			</div>
			<div class="form-group mb-3">
				<form:label path="thoughts">My thoughts:</form:label>
				<form:textarea path="thoughts" class="form-control" />
				<form:errors path="thoughts" class="text-danger" />
			</div>
			<div class="d-flex justify-content-around">
				<input type="submit" value="Submit" class="btn btn-primary" />
				
			</div>
		</form:form>
				<form action="/book/${bookEdit.id}/delete" method="post">
					<input type="hidden" name="_method" value="delete"> 
					<input type="submit" value="Delete" class="btn btn-danger">
				</form>
		
	</div>
</body>
</html>
</body>
</html>
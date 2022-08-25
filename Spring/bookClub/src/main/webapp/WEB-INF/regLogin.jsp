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
    <title>Login</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head> 
<body>
   <body>
	<div class="container mt-3  text-center bg-secondary" style=" border:5px solid greenyellow; border-radius:15px; padding:20px">
		<h1 style="color: greenyellow; text-shadow:2px 2px black;">Book Club</h1>
		<h4 class="mb-4">A place for friends to share thoughts on books.</h4>
		
 		<div class="d-flex justify-content-evenly">
			<div class="w-25 bg-black p-5" style="color:greenyellow; border-radius:15px;">
				<h3>Register:</h3>
				<form:form action="/register" method="post" modelAttribute="newUser">
					<div class="form-group mb-3">
						<form:label path="userName">Name:</form:label>
						<form:input path="userName" class="form-control" />
						<form:errors path="userName" class="text-danger" />
					</div>
					<div class="form-group mb-3">
						<form:label path="email">Email:</form:label>
						<form:input path="email" class="form-control" />
						<form:errors path="email" class="text-danger" />
					</div>
					<div class="form-group mb-3">
						<form:label path="password">Password:</form:label>
						<form:password path="password" class="form-control" />
						<form:errors path="password" class="text-danger" />
					</div>
					<div class="form-group mb-3">
						<form:label path="confirm">Confirm Password:</form:label>
						<form:password path="confirm" class="form-control" />
						<form:errors path="confirm" class="text-danger" />
					</div>
					<input type="submit" value="Register" class="btn btn-primary" />
				</form:form>
			</div>

 			<div class="w-25 bg-black p-5 " style="color:greenyellow; border-radius:15px;">
				<h3>Login:</h3>
				<form:form action="/login" method="post" modelAttribute="loginUser">
					<div class="form-group mb-3">
						<form:label path="email">Email:</form:label>
						<form:input path="email" class="form-control" />
						<form:errors path="email" class="text-danger" />
					</div>
					<div class="form-group mb-3">
						<form:label path="password">Password:</form:label>
						<form:password path="password" class="form-control" />
						<form:errors path="password" class="text-danger" />
					</div>
					<input type="submit" value="Login" class="btn btn-success" />
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
</body>
</html>
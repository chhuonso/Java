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
    <title>SHOW Page</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
      <div class="m-auto text-center">
		<h1 class="text-center mt-5">View page</h1>
		<a href="/home">Dashboard</a>
		<div class="container mt-3 m-auto" >
			
			<h3 class="m-4">Title::  ${thisLookify.title}</h3>
			<h3 class="m-4">Name::  ${thisLookify.artist} </h3>
			<h3 class="m-4">Rating (1-10)::  ${thisLookify.rate}</h3>
			<form action="/songs/${thisLookify.id}" method="post">
				<input type="hidden" name="_method" value="delete"> 
				<input type="submit" value="Delete" class="bg-danger">
			</form>
		</div>   
   </div>
</body>
</html>
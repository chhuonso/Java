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
    <title>Form</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
      <div class="d-flex justify-content-around mt-4">
   		<a href="/home">Dashboard</a>
   </div>
   
   	<div class="  w-50  m-auto">
	<h3 class="text-center text-primary">Create Rating</h3>
	<form:form action="/form" method="post" modelAttribute="lookify" class="m-auto w-50">
	    <p>
	        <form:label path="title" class="text-start">Title</form:label><br />
	        <form:input path="title"/><br />
	        <form:errors path="title" class="text-danger"/>
	    </p>
	    <p>
	        <form:label path="artist" class="text-start">Artist:</form:label><br />
	        <form:input type="text" path="artist"/><br />
	        <form:errors path="artist" class="text-danger"/>
	    </p>
	    <p>
	        <form:label path="rate" class="text-start">Rating (1-10):</form:label><br />

	        <form:input type="number" min="1" max="10" path="rate"/><br />

	        <form:errors path="rate" class="text-danger"/>
	    </p>
	    <p class="text-center">
	    	<input  type="submit" value="Submit"/>
	    </p>
	</form:form>    
	</div>
</body>
</html>
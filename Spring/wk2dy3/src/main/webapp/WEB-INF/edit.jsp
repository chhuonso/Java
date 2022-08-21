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
    <title>EDIT PAGE</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
  ${thisTravel.name}
	<div class="  w-50  m-auto">
	<h1 class="text-center text-success">Edit</h1>
	<a href="/">Go Back</a>
	<form:form action="/edit/${thisTravel.id}" method="post" modelAttribute="thisTravel" class="m-auto w-50">
	    <input type="hidden" name="_method" value="put">
	    <p>
	        <form:label path="name" class="text-start">Expense Name:</form:label><br />
	        <form:input path="name"/><br />
	        <form:errors path="name" class="text-danger"/>
	    </p>
	    <p>
	        <form:label path="vendor" class="text-start">Vendor:</form:label><br />
	        <form:input type="text" path="vendor"/><br />
	        <form:errors path="vendor" class="text-danger"/>
	    </p>
	    <p>
	        <form:label path="amount" class="text-start">Amount:</form:label><br />
	        <form:input type="number" path="amount"/><br />
	        <form:errors path="amount" class="text-danger"/>
	    </p>
	    <p>
	        <form:label path="description" class="text-start">Description:</form:label><br />
	        <form:textarea path="description"/><br />
	        <form:errors path="description" class="text-danger"/>     
	    </p>    
	    <input type="submit" value="Submit"/>
	</form:form>    
	</div>
</body>
</html>
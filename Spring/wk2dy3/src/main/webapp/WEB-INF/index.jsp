<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tacos</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="m-auto text-center">
		<h1 class="text-primary">Save Travels</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Vendor</th>
					<th scope="col">Amount</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allTheTravels}" var="st">
				<tr>
					<td><a href="/show/${st.id}">${st.name}</a></td>
					<td>${st.vendor}</td>
					<td>$${st.amount}</td>
					<td>
						<a href="/edit/${st.id}">Edit</a> 
						<form action="/travels/${st.id}" method="post">
							<input type="hidden" name="_method" value="delete"> 
							<input type="submit" value="Delete" class="bg-danger">
						</form>
					</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	
	<div class="  w-50  m-auto">
	<h3 class="text-center text-primary">Add an expense:</h3>
	<form:form action="/travels" method="post" modelAttribute="travels" class="m-auto w-50">
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
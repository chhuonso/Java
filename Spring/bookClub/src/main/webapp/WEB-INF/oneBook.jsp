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
    <title>One Book</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   <div class="container mt-3 border border-5 border-dark p-5 bg-light">
		<div class="d-flex justify-content-between align-items-center">
			<h1>
				<c:out value="${oneBook.title}" />
			</h1>
			<a href="/welcome">back to shelves</a>
		</div>

		<c:choose>
			<c:when test="${session_user_id == oneBook.user.id}">
				<h5 class="mt-3 ">
					<span style="color:red"> You </span> read
					<span style="color:aqua"><c:out value="${oneBook.title}" /></span>
					by
					<span style="color:greenyellow"><c:out value="${oneBook.author}" /></span>
				</h5>
				<h5 class="mt-2">Here are your thoughts: </h5>
			</c:when>
			<c:otherwise>
				<h5 class="mt-3">
					<span style="color:red"> <c:out value="${oneBook.user.userName}" /> </span>
					read
					<span style="color:aqua"> <c:out value="${oneBook.title}" /> </span>
					by
					<span style="color:greenyellow"> <c:out value="${oneBook.author}" /> </span>
				</h5>
				<h5 class="mt-2">
					Here are
					<c:out value="${oneBook.user.userName}" />
					's thoughts:
				</h5>
			</c:otherwise>
		</c:choose>


		<hr />
		<p class="text-center">
			<em><c:out value="${oneBook.thoughts}" /></em>
		</p>
		<hr />

		<div class="d-flex justify-content-between">
			<c:if test="${session_user_id == oneBook.user.id}">
			
			<form action="/book/${oneBook.id}/edit" method="post">
				<input type="hidden" name="_method" value="delete"> 
				<input type="submit" value="Delete" class="btn btn-danger">
			</form>
			
				<a href="/book/${oneBook.id}/edit" class="btn btn-warning">Edit</a>

			</c:if>
		</div>
	</div>
</body>
</html>
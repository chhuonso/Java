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
    <title>Welcome</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   
	<div class="container border border-5 border-dark p-5 bg-light">
		<div class="d-flex justify-content-between align-items-center">
			<h1>Welcome, <c:out value="${userName}"/></h1>
			<a href="/" class="text-danger">Log Out</a>
		</div>
		<div class="d-flex justify-content-between">
			<h5>Books from everyone's shelves:</h5>
			<a href="/book/new">+ Add book</a>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Author Name</th>
					<th>Posted By</th>
					<th>Action</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allBooks}" var="book">
					<tr >
						<td><c:out value="${book.id}"/></td>
						<td><a href="/book/${book.id}"><c:out value="${book.title}"/></a></td>
						<td><c:out value="${book.author}"/></td>
						<td><c:out value="${book.user.userName}"/></td>
						<td>
						<div class="d-flex justify-content-around">
						<c:if test="${session_user_id == book.user.id}">

							<a href="/book/${book.id}/edit" class="btn btn-warning">Edit</a>

							<form action="/book/${book.id}/edit" method="post">
								<input type="hidden" name="_method" value="delete"> <input
									type="submit" value="Delete" class="btn btn-danger">
							</form>
						</c:if>
						</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>	
		</table>
	</div>
	<div class="container mt-5 border border-5 border-dark p-5 bg-light">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Author Name</th>
					<th>Posted By</th>
					<th>Action</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allBooks}" var="book">
					<c:if test="${session_user_id == book.user.id}">
					<tr>
						<td><c:out value="${book.id}"/></td>
						<td><a href="/book/${book.id}"><c:out value="${book.title}"/></a></td>
						<td><c:out value="${book.author}"/></td>
						<td><c:out value="${book.user.userName}"/></td>
						<td>
							<div class="d-flex justify-content-start">
								<a href="/book/${book.id}/edit" class="btn btn-success">Return</a>
							</div>
						</td>
					</tr>
					</c:if>
				</c:forEach>
			</tbody>	
		</table>
	</div>
</body>
</html>
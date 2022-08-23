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
    <title>TOP 10</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   <h1 class="text-primary text-center">TOP 10!</h1>
    <div class="d-flex justify-content-around mt-4">
   		<a href="/home">Dashboard</a>
    </div>
   
	<div class="m-auto w-50 mt-3 text-center">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Rating</th>
					<th scope="col">Name</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allTheLookify}" var="ly">
				<tr>

					<td><c:out value="${ly.rate}"></c:out></td>

					<td><a href="/show/${ly.id}">${ly.title} </a>- ${ly.artist}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
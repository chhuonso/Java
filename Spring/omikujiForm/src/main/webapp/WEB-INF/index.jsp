<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 class="text-center">Send an Omikuji!</h1>
	<div class="m-auto w-50">

	<form action="/fill" method="POST" class="m-auto w-100">
		<label>Pick a Number from 5 - 25:</label><br />
		<select name="number">
		<% for (int i = 5; i <= 25; i++) { %>
			<option value="<%=i%>"><%=i%></option>
		<% } %>
		</select> <br />
		
		<label>Enter the name of any city:</label><br />
		<input type="text" name="city"/><br />
		
		<label>Enter the name of any real person:</label><br />
		<input type="text" name="person"/><br />
		
		<label>Enter professional endeavor or hobby:</label><br />
		<input type="text" name="hobby"/><br />
		
		<label>Enter any type of living thing:</label><br />
		<input type="text" name="living"/><br />
		
		<label>Say something nice to someone:</label><br />
		<textarea name="nice" cols="25" rows="7"></textarea>
		
		<label>Send and show a friend</label><br /><br />
		<button>Send</button>
	</form>
	</div>
</body>
</html>
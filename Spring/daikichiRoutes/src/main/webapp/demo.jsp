<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>Test</h1>
		<% for (int i =0; i < 5; i++) {%>
			<p><%= i %></p>
		<% }%>
		
		<h3><%= new Date()%></h3>
		
</body>
</html>
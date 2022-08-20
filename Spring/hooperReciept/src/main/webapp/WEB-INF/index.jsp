<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hopper's Receipt</title>
</head>
<body>
	<h1>Customer Name: ${name}</h1>
	<h2><c:out value="${name}"/></h2>
	
	<p> Item name: ${itemName }</p>
	<h2><c:out value="${itemName}"/></h2>
	
	<p>Price: $${price }</p>
	<h2><c:out value="${price}"/></h2>
	
	<p>Description: ${description }</p>
	<h2><c:out value="${description}"/></h2>
	
	<p>Vendor: ${vendor }</p>
	<h2><c:out value="${vendor}"/></h2>
</body>
</html> 
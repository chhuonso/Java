<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One Book</title>
</head>
<body>
	<div>
		<h1>ID: BOOK ${thisBook.id}</h1>
		<h3>Title: ${thisBook.title}</h3>
		<!--$ { book.getBook() also works }  -->
		<h5>Description: ${thisBook.description}</h5>
		<h5>Language: ${thisBook.language}</h5>
		<h5>Pages: ${thisBook.numberOfPages}</h5>
	</div>
</body>
</html>
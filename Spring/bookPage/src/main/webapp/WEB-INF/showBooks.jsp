<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<meta charset="UTF-8">
<title>BOOK SHOW</title>
</head>
<body>
	<div class="container text-center">
		<h1>BOOKS</h1>
		<hr />
		<!--(1)HOW WOULD U LOOP OVER THE ARRAY?  -->
		<!--       items=array         iterator= new name  -->
		<c:forEach items="${allTheBooks}" var="book">
		<!--(2)HOW WOULD U CREATE A ROUTE FOR EACH BOOK AND WHERE WOULD IT GO?  -->
		<!-- WHAT WOULD A BOOK HAVE THAT SEPERATES IT FROM EACH OTHER? -->
		<!-- each books has a .id (LONG ID) then create a new route for each book with an ANCHOR TAG -->
			<div>
			<h3><a href="/books/${book.id}">Title: ${book.title}</a></h3> <!--$ {book.getBook() also works}  -->
			<h5>Description: ${book.description}</h5>
			<h5>Language: ${book.language}</h5>
			<h5>Pages: ${book.numberOfPages}</h5>
			</div>
			<hr />
		</c:forEach>
		
		<!--(3)HOW IS IT ACCESSING PRIVATE VARIBALES THATS INSIDE OF BOOK.JAVA?  -->
		<!-- springs tools automatically looks for the getters and setter to check them even if its private-->
		<!-- KOOL THING ABOUT JAVA!! -->
		
		<!--now lets create the route  -->
	</div>
</body>
</html>
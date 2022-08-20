package com.sonny.mvc.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sonny.mvc.models.Book;
import com.sonny.mvc.services.BookService;

@Controller
public class ViewController {
	
//	import the bookService
	
//	(1)Why the service?
//	Because the service communicates to the database
	
//	(2)What's inside of Service?
//	All the CRUD u need to display on the JSP
	private final BookService bookServ;  //(1&2)setup
	
//	accessing the BookService to the name bookServ
	public ViewController(BookService bookServ) {
		this.bookServ = bookServ;
	}
	
	
//	first
	@RequestMapping("/")
	public String index(Model model) {  //(2)(command+ shift + o) now we have our model
//		grab all the books from the services
		
//		(1)What will be return inside of books?
//		A list of BOOKS
		
		List<Book> allTheBooks = bookServ.allBooks();
		
//		import our model and java.util.list (command+ shift + o)
//		Now we have and array of BOOK OBJECTS
		System.out.println(allTheBooks);
		
//		(2)How do i send do information to this JSP page? (just an e.g for this home page)
//		(option 1 is index(Model model) pass inside the method )
		
//		Now send over the showBooks.jsp page allTheBooks
		
//		(3)How do u put something inside the model ATTRIBUTE?
//		model.addAttribute("key", value)
		model.addAttribute("allTheBooks", allTheBooks);  // call it whatever u want as long the "key" is there to access
//		
		return "showBooks.jsp";
	}
	
	
//	SHOW ONE PAGE / BOOK
	
	
//	Second
	
	@RequestMapping("/books/{id}")
//	(1)How do we grab the variable {id} from the JSP -showBooks.jsp?
//	@ PathVariable()
	public String getOne(@PathVariable("id") Long id, Model model) {
		
//		Go to the DB and grab the id to get the book
		
//		(2A)How do we grab the book from the Database?
//		from the service bookServ that we created
		
//		(2B)Where is findBook() accessing from?
//		CRUD- READ ONE  which is findBook
//		remember it will return BACK a BOOK OBJECT or null because of the statement
//		SO we would have to store it Book to new NAME
		
		Book thisBook = bookServ.findBook(id);
		
//		(3A)NOW what do we do with this BOOK OBJECT from the DB?
//		(Model model)
		
//		(3B)How do i send do information to this JSP page? 
//		(option 1 is index(Model model) pass inside the method)
		
//		pass the book to the JSP page
		model.addAttribute("thisBook", thisBook);
		
//		direct to a new page to see one so we need to create a new JSP Page
		return "oneBook.jsp";
	}
	
	
	
	
	
	
	
}

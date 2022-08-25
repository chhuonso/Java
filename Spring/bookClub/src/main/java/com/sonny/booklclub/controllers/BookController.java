package com.sonny.booklclub.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.sonny.booklclub.models.Book;
import com.sonny.booklclub.models.User;
import com.sonny.booklclub.service.BookService;
import com.sonny.booklclub.service.UserService;

@Controller
public class BookController {

	@Autowired
	private BookService bookServ;

	@Autowired
	private UserService userServ;

	@GetMapping("/book/new")
	public String newBookForm(@ModelAttribute("newBook") Book book,
			HttpSession session) {
		return "newBook.jsp";
	}

	@PostMapping("/book/create")
	public String createNewBook(@Valid @ModelAttribute("newBook") Book book,
			BindingResult result, Model model,
			HttpSession session) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if (session.getAttribute("session_user_id") == null) {
			return "redirect:/";
		}

		if (result.hasErrors()) {
			return "newBook.jsp";
		} else {
			Long userID = (Long) session.getAttribute("session_user_id");
			User creator = userServ.findUser(userID);

			book.setUser(creator);
			bookServ.createBook(book);
			return "redirect:/welcome";
		}
	}
	
	
//	Show One

	@GetMapping("/book/{id}")
	public String oneBook(@PathVariable("id") Long id,
			HttpSession session, Model model) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if (session.getAttribute("session_user_id") == null) {
			return "redirect:/";
		}

		Book oneBook = bookServ.findBook(id);
		model.addAttribute("oneBook", oneBook);

		return "oneBook.jsp";
	}

	@GetMapping("/book/{id}/edit")
	public String editBook(@PathVariable("id") Long id,
			HttpSession session, Model model) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if (session.getAttribute("session_user_id") == null) {
			return "redirect:/";
		}

		Book bookEdit = bookServ.findBook(id);
		model.addAttribute("bookEdit", bookEdit);

		return "editBook.jsp";
	}

	@PostMapping("/book/{id}/edit")
	public String updateBook(@Valid @ModelAttribute("bookEdit") Book book,
			BindingResult result, HttpSession session) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if (session.getAttribute("session_user_id") == null) {
			return "redirect:/";
		}
		
		if(result.hasErrors()) {
			return "editBook.jsp";
		} else {
			Long userID = (Long) session.getAttribute("session_user_id");
			User creator = userServ.findUser(userID);

			book.setUser(creator);
			bookServ.updateBook(book);
			return "redirect:/welcome";
		}
		
	}
	
	
//	Delete
	@DeleteMapping("/book/{id}/edit")
	public String deleteEditBoOk(@PathVariable("id") Long id) {
		bookServ.deleteBook(id);
		return "redirect:/welcome";
	}
	
	
	@DeleteMapping("/book/{id}/delete")
	public String deleteShowBook(@PathVariable("id") Long id) {
		bookServ.deleteBook(id);
		return "redirect:/welcome";
	}

}

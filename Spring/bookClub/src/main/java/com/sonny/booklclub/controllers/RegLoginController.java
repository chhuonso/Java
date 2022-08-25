package com.sonny.booklclub.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sonny.booklclub.models.Book;
import com.sonny.booklclub.models.LoginUser;
import com.sonny.booklclub.models.User;
import com.sonny.booklclub.service.BookService;
import com.sonny.booklclub.service.UserService;


@Controller
public class RegLoginController {
	
	@Autowired
	UserService userServ;
	
	@Autowired
	BookService bookServ;
	
	@GetMapping("/")
	public String regLoginPage(Model model, HttpSession session) {
		//clear session
		session.invalidate();
		
		model.addAttribute("newUser", new User());
		model.addAttribute("loginUser", new LoginUser());
		
		return "regLogin.jsp";
	}
	
	@GetMapping("/welcome")
	public String welcomePage(HttpSession session, Model model) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if(session.getAttribute("session_user_id") == null) {
			return "redirect:/";
		}
		
		List<Book> allBooks = bookServ.allBooks();
		model.addAttribute("allBooks", allBooks);
		
		Long userID = (Long) session.getAttribute("session_user_id");
		User user = userServ.findUser(userID);
		
		// for enhanced security, only add what is needed
		// don't add the entire user object because that'll send the password
		model.addAttribute("userName", user.getUserName());
		
		return "welcome.jsp";
	}
	
//	
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
//		Exectue the Service to Register FIRST  to userService
		User user = userServ.register(newUser, result);
		
		if(result.hasErrors()) {
			model.addAttribute("loginUser", new LoginUser());
			return "regLogin.jsp";
		} else {
			session.setAttribute("session_user_id", user.getId());
			return "redirect:/welcome";
		}
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("loginUser") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		User user = userServ.login(newLogin, result);
		
		if(result.hasErrors() || user == null) {
			// re-render login/reg page if any errors
			model.addAttribute("newUser", new User());
			return "regLogin.jsp";
		} else {
			session.setAttribute("session_user_id", user.getId()); // add user to session
			return "redirect:/welcome";
		}
	}

}
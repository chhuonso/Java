package com.sonny.counter.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {

	@RequestMapping("/")
	public String indexRoute(HttpSession session) {
		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		else {
			Integer counting = (Integer) session.getAttribute("count");
			
			session.setAttribute("count", counting + 1);
		}
		return "index.jsp";
	}
	
	@RequestMapping("/double")
	public String doubleRoute(HttpSession session) {
		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		else {
			Integer counting = (Integer) session.getAttribute("count");
			
			session.setAttribute("count", counting + 2);
		}
		return "double.jsp";
	}
}

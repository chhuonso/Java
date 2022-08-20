package com.sonny.name.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
//	home route 
	@RequestMapping("/")
	public String indexFrom() {
		
		return "index.jsp";
	}
//	form fill out route 
	@RequestMapping(value="/fill", method=RequestMethod.POST)
	public String fortuneForm(
//	HTML attribute i.e name="city" access in this class to be passed
			@RequestParam("number") Integer number,
			@RequestParam("city") String city,
			@RequestParam("person") String person,
			@RequestParam("hobby") String hobby,
			@RequestParam("living") String living,
			@RequestParam("nice") String nice,
			
			HttpSession session
			) {
//Once in session USEABLE  	( HTML   , VAULE )
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("living", living);
		session.setAttribute("nice", nice);
		
		return "redirect:/show";	//<<<<=====
//		
	}
//	get directed after form is filled to this route 
	@RequestMapping("/show")
	public String showForm() {
		
		return "show.jsp";

	}
}

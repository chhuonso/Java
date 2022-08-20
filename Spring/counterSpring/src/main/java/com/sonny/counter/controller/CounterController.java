package com.sonny.counter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CounterController {
	
	@RequestMapping("/counter")
	public String counter() {
		return "counter.jsp";
	}
}

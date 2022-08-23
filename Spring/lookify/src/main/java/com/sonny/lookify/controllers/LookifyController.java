package com.sonny.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sonny.lookify.models.Lookify;
import com.sonny.lookify.service.LookifyService;




@Controller
public class LookifyController {
	@Autowired
	private LookifyService lookifyService;
	
//	__________________________A MAIN PAGE THEN DIRECTS TO HOME PAGE___________________________________
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/home")
	public String redirectMe() {
		return "redirect:/dashboard";
	}
	
	
	@GetMapping("/dashboard")
	public String allTheLookify(@ModelAttribute("lookify") Lookify lookify, Model model) {	
		List<Lookify> allTheLookify = lookifyService.allLookify();
		model.addAttribute("allTheLookify", allTheLookify);
		return "home.jsp";
	}
	
//	__________________________POST CREATED FROM FORM___________________________________
	
	@GetMapping("/songs/new")
	public String newForm(@ModelAttribute("lookify") Lookify lookify, Model model) {	
		List<Lookify> allTheLookify = lookifyService.allLookify();
		model.addAttribute("allTheLookify", allTheLookify);
		return "form.jsp";
	}
	@PostMapping("/form")
	public String createLookify(@Valid @ModelAttribute("lookify") Lookify lookify, 
									BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Lookify> allTheLookify = lookifyService.allLookify();
			model.addAttribute("allTheLookify", allTheLookify);
			return "form.jsp";
		} else {
			lookifyService.createLookify(lookify);
			return "redirect:/dashboard";
		}

	}
//	__________________________VIEW ONE PAGE___________________________________


	@RequestMapping("/show/{id}")
	public String showOne(@PathVariable("id") Long id, Model model) {
		Lookify thisLookify = lookifyService.findLookify(id);
		model.addAttribute("thisLookify", thisLookify);
	return "show.jsp";
	}
//	__________________________TOP 10 PAGE___________________________________
	@RequestMapping("/search/topten")
	public String top10Lookify( Model model) {	
		List<Lookify> allTheLookify = lookifyService.allLookify();
		model.addAttribute("allTheLookify", allTheLookify);
		return "top10.jsp";
	}
	
	
	
	
}

package com.sonny.dojosninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sonny.dojosninjas.models.Dojo;
import com.sonny.dojosninjas.models.Ninja;
import com.sonny.dojosninjas.services.DojoService;
import com.sonny.dojosninjas.services.NinjaService;

@Controller
public class NinjaController {
	
	@Autowired
	private NinjaService ninjasServ;
	
	@Autowired
	private DojoService dojoServ;
	
	@GetMapping("/new/ninja")
	public String newNinjaPage(@ModelAttribute("newNinja") Ninja ninja, Model model) {
		
//		this access all DOJO from the DOJO SERVICE
		List<Dojo> allDojos = dojoServ.allDojos();
		
		
//		How do i pass all dojo to JSP page?
		model.addAttribute("allDojo", allDojos);
		return "addninja.jsp";
	}
	
	
	@PostMapping("/add_ninja")
	public String addDojoAction(@Valid @ModelAttribute("newNinja") Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Dojo> allDojos = dojoServ.allDojos();
			model.addAttribute("allDojo", allDojos);
			return "addninja.jsp";
		} else {
			ninjasServ.createNinja(ninja);
			Long id = ninja.getDojo().getId();
			return "redirect:/dojos/" + id;
		}
		
		
	}
	
}

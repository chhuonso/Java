package com.sonny.dojosninjas.controllers;

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

import com.sonny.dojosninjas.models.Dojo;
import com.sonny.dojosninjas.models.Ninja;
import com.sonny.dojosninjas.services.DojoService;
import com.sonny.dojosninjas.services.NinjaService;

@Controller
public class HomeCrontollers {
	@Autowired
	private DojoService dojoServ;
	
	
	@Autowired
	private NinjaService ninjaServ;
	
	@GetMapping("/")
	public String dojoPage(@ModelAttribute("dojo") Dojo dojo) {
		
		return "dojoPage.jsp";
	}
	
	@PostMapping("/add_dojo")
	public String addDojoAction(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "dojoPage.jsp";
		} else {
			dojoServ.createDojo(dojo);
			return "redirect:/";
		}
		
	}
	
	
	@GetMapping("/dojos/{id}")
	public String showDojo(@PathVariable("id") Long id, Model model) {
		 
		Dojo dojo = dojoServ.findDojo(id);
		model.addAttribute("dojo", dojo);
		
		List<Ninja> dojoNinjas = dojo.getNinjas();
		model.addAttribute("dojoNinjas", dojoNinjas);
	     
	    return "show.jsp";
	}
	
	
	
}

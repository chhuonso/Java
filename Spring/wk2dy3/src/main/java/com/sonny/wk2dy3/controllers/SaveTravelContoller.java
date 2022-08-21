package com.sonny.wk2dy3.controllers;

import java.util.List;

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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sonny.wk2dy3.models.SaveTravel;
import com.sonny.wk2dy3.services.SaveTravelService;

@Controller
public class SaveTravelContoller {

	@Autowired
	private SaveTravelService travelService;
		
	@GetMapping("/")
	public String redirectMe() {
		return "redirect:/travels";
	}
	
	@GetMapping("/travels")
	public String allSaveTravels(@ModelAttribute("travels") SaveTravel saveTravel, Model model) {
		
//		SaveTravel saveTravel = new SaveTravel();
//		model.addAttribute("travels", saveTravel);
//		
		List<SaveTravel> allTheTravels = travelService.allSaveTravels();
		model.addAttribute("allTheTravels", allTheTravels);
		return "index.jsp";
	}
	

	
//	Post - create Methods
	
	@PostMapping("/travels")
	public String createTravel(@Valid @ModelAttribute("travels") SaveTravel saveTravel, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<SaveTravel> allTheTravels = travelService.allSaveTravels();
			model.addAttribute("allTheTravels", allTheTravels);
			return "index.jsp";
		} else {
		SaveTravel newTravel = travelService.createTravel(saveTravel);
		return "redirect:/travels";
		}
	}

//	RENDER EDIT PAGE
	@GetMapping("/edit/{id}")
	public String editPage(@PathVariable("id") Long id, Model model) {
		
		SaveTravel thisTravel = travelService.findTravel(id);
		model.addAttribute("thisTravel", thisTravel);
		return "edit.jsp";
		
	}
	
//	METHOD FOR EDIT
	@PutMapping("/edit/{id}")
	public String update(@Valid @ModelAttribute("thisTravel")SaveTravel saveTravel, BindingResult result) {
		if(result.hasErrors()) {
			return "edit.jsp";
		} else {
		travelService.updateTravel(saveTravel);
		return "redirect:/travels";		

		}
	}
	
	
	
//	DELETE
	@DeleteMapping("/travels/{id}")
	public String delete(@PathVariable("id") Long id) {
		travelService.deleteTravel(id);
		return "redirect:/";
	}
	
	
	
//	VIEW ONE PAGE
	@RequestMapping("/show/{id}")
	public String showOne(@PathVariable("id") Long id, Model model) {
			
		SaveTravel thisTravel = travelService.findTravel(id);
		model.addAttribute("thisTravel", thisTravel);
	return "show.jsp";
	}
	
}

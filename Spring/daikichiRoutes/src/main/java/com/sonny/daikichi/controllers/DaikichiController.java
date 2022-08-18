package com.sonny.daikichi.controllers;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/daikichi")
public class DaikichiController {
	@RequestMapping("/{goingTo}/{place}")
	public String daikichi(@PathVariable("goingTo") String goingTo, @PathVariable("place") String place) {
		return "Congratulation! You will soon " + goingTo + " to " + place + "!";
	}
	@RequestMapping("/lotto/{even}")
	public String today(@PathVariable("even") int even) {
		if(even % 2 == 0) {
			return "You will take a grand journey in the near future, but be weary of tempting offers";			
		} 
		else {
			return "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends.";
		}
	}

}

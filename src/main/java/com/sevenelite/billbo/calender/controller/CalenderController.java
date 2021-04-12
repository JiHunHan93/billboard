package com.sevenelite.billbo.calender.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/calender/*")
public class CalenderController {
	
	@GetMapping("main")
	public String CalenderMain() {
		
		return "Calender/calender";
	}
	
	

}

package com.sevenelite.billbo.calender.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/calender2/*")
public class CalenderController2 {
	
	@GetMapping("main")
	public String CalenderMain() {
		
		return "Calender/calender2";
	}
	
	

}

package com.sevenelite.billbo.master.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/master/*")
public class MasterController {
	
	
	
	@GetMapping(value={"main", "/"})
	public String registPage() {
		
		return "master/main";
	}
	
	
}

package com.sevenelite.billbo.apps.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class AppsController {
	
	@GetMapping("/apps/chat")
	public String appsPage() {
		
		return "apps/chat";
	}
	
}
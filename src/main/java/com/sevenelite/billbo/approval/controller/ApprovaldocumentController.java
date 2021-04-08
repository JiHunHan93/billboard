package com.sevenelite.billbo.approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/approval/document/*")
public class ApprovaldocumentController {
	
	@GetMapping("1004")
	public String vacation() {
		
		return "approval/document/1004";
	}
	
}

package com.sevenelite.billbo.approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/approval/*")
public class ApprovalDocumentController {
	
	
	
	@GetMapping(value={"main", "/"})
	public String registPage() {
		
		return "approval/main";
	}
	
	
}

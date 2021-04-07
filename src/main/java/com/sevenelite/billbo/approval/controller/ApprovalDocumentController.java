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
	
	@GetMapping("drafting")
	public String draftingMagin() {
		
		System.out.println("가즈아");
		
		return "approval/drafting";
	}
	
	
	@GetMapping("ajax")
	public String ajaxMain() {
		
		System.out.println("가즈아 ajax");
		
		return "approval/ajax";
	}
	
}

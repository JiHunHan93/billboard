package com.sevenelite.billbo.allmember.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/allEmployee")
public class AllmemberController {

	
	@GetMapping("/selectList")
	public String selectAllEmployeeList() {
		
		
		return "allmember/allmember";
	}
}

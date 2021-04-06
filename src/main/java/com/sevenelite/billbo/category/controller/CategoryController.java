package com.sevenelite.billbo.category.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class CategoryController {
	
	@GetMapping("/apps")
	public String apps() {
		
		return "category/category-Apps";
	}
	
	@GetMapping("/admin")
	public String admin() {
		
		return "category/category-Admin";
	}
	
	@GetMapping("/attendance")
	public String attendance() {
		
		return "category/category-Attendance";
	}
	
	@GetMapping("/employee")
	public String employee() {
		
		return "category/category-Employee";
	}
	
	@GetMapping("/information")
	public String information() {
		
		return "category/category-Information";
	}
	

	
	
}

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
	

	
	
}

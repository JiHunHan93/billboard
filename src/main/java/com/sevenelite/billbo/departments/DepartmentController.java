package com.sevenelite.billbo.departments;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DepartmentController {
	
	@GetMapping("department")
	public String DepartmentsController() {
		
		return "department";
}
	
}

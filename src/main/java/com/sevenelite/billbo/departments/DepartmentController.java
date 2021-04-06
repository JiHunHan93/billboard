package com.sevenelite.billbo.departments;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class DepartmentController {
	
	@GetMapping("department")
	public String DepartmentsController() {
		
		return "department/department";
}
	
}

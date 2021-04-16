package com.sevenelite.billbo.department.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/department/*")
public class DepartmentMainController {
	
	@GetMapping(value={"department", "/"})
	public String department() {
		
		return "department/department";
	}
	
//	@GetMapping(value={"department-business"})
//	public String departmentBusiness() {
//		
//		return "department/department-business";
//	}
//	
}

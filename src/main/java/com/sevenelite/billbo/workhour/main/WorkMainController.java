package com.sevenelite.billbo.workhour.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.workhour.work.model.service.WorkService;
@Controller
@RequestMapping("/")
public class WorkMainController {
	
	private WorkService service;
	
	@GetMapping("work")
	public String workController() {
		
		return "workhour/workList";
	}
}
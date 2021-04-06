package com.sevenelite.billbo.workhour;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/")
public class WorkController {
	
	@GetMapping("work")
	public String workController() {
		
		return "workhour/workList";
	}
}

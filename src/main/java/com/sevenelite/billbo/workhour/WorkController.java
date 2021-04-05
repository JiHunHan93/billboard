package com.sevenelite.billbo.workhour;

import org.springframework.web.bind.annotation.GetMapping;

public class WorkController {
	
	@GetMapping("work")
	public String workController() {
		
		return "workList";
	}
}

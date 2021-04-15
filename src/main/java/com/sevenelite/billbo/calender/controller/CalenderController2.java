package com.sevenelite.billbo.calender.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.calender.model.dto.CalDTO;

@Controller
@RequestMapping("/calender2/*")
public class CalenderController2 {
	
	@GetMapping("main")
	public String CalenderMain() {
		
		Map<String, CalDTO> javaMap = new HashMap<String, CalDTO>();
		
//		javaMap.put("evt1", new CalDTO("db이벤트1", "2021-04-04", "2021-04-06", "false") );
//		javaMap.put("evt2", new CalDTO("db이벤트2", "2021-04-23", "2021-04-26", "false") ); 
		return "Calender/calender2";
	}
	
	

}

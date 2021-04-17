package com.sevenelite.billbo.calendar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/calender/*")
public class CalenderController {
	
	/*
	 * @GetMapping("main") public String CalenderMain() {
	 * 
	 * return "Calender/calender"; }
	 */
	@RequestMapping(value="main" ,method = RequestMethod.GET, produces = "application/json; charset=utf8")
	
	public String CalenderMain2() {
		
		return "Calender/calender";
	}
	
	
}

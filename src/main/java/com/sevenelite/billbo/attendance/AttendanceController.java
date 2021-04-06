package com.sevenelite.billbo.attendance;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/attendance/*")
public class AttendanceController {
	
	@GetMapping(value={"attendance","/"})
	public String page() {
		System.out.println("??");
		
//		Date today = new Date();
//		SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss a");
//		System.out.println("Time: "+time.format(today));


		
		
		return "attendance/attendance";
	}

}

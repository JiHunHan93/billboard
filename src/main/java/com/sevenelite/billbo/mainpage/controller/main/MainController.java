package com.sevenelite.billbo.mainpage.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {
	
	@GetMapping(value= {"main", "/"})
	public String mainPage() {
		System.out.println("로그인 후 여기로 오나?");
		return "mainpage/main";
	}
	
	@GetMapping(value= {"main222"})
	public String mainTwoPage() {
		
		return "mainpage/main222";
	}
	
	@GetMapping(value= {"mainpage/test"})
	public String mainTestPage() {
		
//		new ApplicationTest().beansName();
		System.out.println("호출 완료");
		
		return "mainpage/test";
	}
	
}

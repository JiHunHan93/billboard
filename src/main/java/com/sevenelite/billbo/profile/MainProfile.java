package com.sevenelite.billbo.profile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/profile/*")
public class MainProfile {

	@GetMapping(value= {"mainProfile","/"})
	public String page() {
		System.out.println("오나?");
		return "profile/mainProfile";
	}
}

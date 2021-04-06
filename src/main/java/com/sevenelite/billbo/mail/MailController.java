package com.sevenelite.billbo.mail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MailController {
	
	@GetMapping("mail")
	
	public String MailController() {
		
		return "mail/mailList";
	}
}

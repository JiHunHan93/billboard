package com.sevenelite.billbo.profile;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.profile.model.dto.ArmyDTO;

@Controller
@RequestMapping("/profile/*")
public class MainProfileController {

	@GetMapping(value= {"mainProfile","/"})
	public String page() {
		System.out.println("오나?");
		return "profile/mainProfile";

	}
		
		@PostMapping("mainProfile")
		public String armypage(@ModelAttribute ArmyDTO army) {
			
			System.out.println("branch : " +army);
			
			System.out.println("오나!!!!!!!!!!!!!");
		
			return "profile/mainProfile";
	}

}

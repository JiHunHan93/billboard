package com.sevenelite.billbo.profile;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
import com.sevenelite.billbo.profile.model.service.ProfileService;

@Controller
@RequestMapping("/profile/*")
public class MainProfileController {

	private final ProfileService profileService;
	@Autowired
	public MainProfileController(ProfileService profileService) {
	
		this.profileService = profileService;
	}
	
	@GetMapping(value= {"mainProfile","/"})
	public String page() {
		System.out.println("오나?");
		return "profile/mainProfile";

	}
		
		@PostMapping("mainProfile")
		public String armypage(@ModelAttribute ArmyDTO army) {
			
			System.out.println("branch : " +army);
			
			System.out.println("오나!!!!!!!!!!!!!");
			
			profileService.armyInfo(army);
			
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			
			return "profile/mainProfile";
	}
//	 @PostMapping("mainProfile")
//	 public String memberInfo(@ModelAttribute MemberInfoDTO member) {
//		 profileService.memberInfo(member);
//		 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//			
//			return "profile/mainProfile";
//	 }
		
}

package com.sevenelite.billbo.profile;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;

import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.CareerDTO;
import com.sevenelite.billbo.profile.model.dto.CertificateDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;
import com.sevenelite.billbo.profile.model.dto.FamilyDTO;
import com.sevenelite.billbo.profile.model.dto.FinalAcademicDTO;
import com.sevenelite.billbo.profile.model.dto.LicenseDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
import com.sevenelite.billbo.profile.model.dto.SpotDTO;
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
		return "profile/main";

	}
		/*1 신상*/
	  @PostMapping("mainProfile")
	  public String memberInfo(@ModelAttribute MemberInfoDTO member) { 
//		  profileService.memberInfo(member); 
		  System.out.println("branch:" + member);
		  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		  List<MemberInfoDTO> memberInfo = profileService.mainProfile();
		  System.out.println("왜 안오는거여 쉬벌?????");

		  return "profile/main";
	  }
//	 /*2 직위*/
	  @PostMapping("joblevel")
	  public String spot(@ModelAttribute SpotDTO spot) { 
		  profileService.spot(spot); 
	  
	  System.out.println("왜 안오는거여 쉬벌?????");
	  
	  return "profile/mainProfile";
	  }
	  
	  /*3 부서*/
	  @PostMapping("part")
	  public String dept(@ModelAttribute DeptDTO dept) { 
		  profileService.dept(dept); 
	  
	  System.out.println("왜 안오는거여 쉬벌?????");
	  
	  return "profile/mainProfile";
	  }
	  
	  /*4.경력*/
	@PostMapping("career")
	  public String career(@ModelAttribute CareerDTO career) { 
		  profileService.career(career); 
		  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				
	  System.out.println("왜 안오는거여 쉬벌?????");
	  
	  return "profile/mainProfile";
	  }
	/*4상벌내역 보류*/
//	@PostMapping("bonus")
//	public String bonus(@ModelAttribute BonusDTO bonus) {
//		
//		System.out.println("branch : " +bonus);
//		
//		System.out.println("오나!!!!!!!!!!!!!");
//		
//		profileService.bonus(bonus);
//		
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//		
//		return "profile/mainProfile";
//	}
	/*5.인사평가*/
	/*없음*/
	/*6.자격*/
	@PostMapping("certificate")
	public String certificate(@ModelAttribute CertificateDTO certificate) {
		
		System.out.println("branch : " +certificate);
		
		System.out.println("오나!!!!!!!!!!!!!");
		
		profileService.certificate(certificate);
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		return "profile/mainProfile";
	}
	/*7.병역*/
	@PostMapping("army")
	public String armypage(@ModelAttribute ArmyDTO army) {
		
		System.out.println("branch : " +army);
		
		System.out.println("오나!!!!!!!!!!!!!");
		
		profileService.armyInfo(army);
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		return "profile/mainProfile";
	}
	
	
	/*8.학력*/
	@PostMapping("finalAcademic")
	public String finalAcademic(@ModelAttribute FinalAcademicDTO finalAcademic) {
		
		System.out.println("branch : " +finalAcademic);
		
		System.out.println("하..");
		
		profileService.finalAcademic(finalAcademic);
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		return "profile/mainProfile";
	}
	
	/*9.가족사항*/
	@PostMapping("family")
	public String family(@ModelAttribute FamilyDTO family) {
		
		System.out.println("branch : " +family);
		
		System.out.println("하..");
		
		/* SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); */
		profileService.family(family);
		
		
		return "profile/mainProfile";
	}
	/*10.면허*/
	@PostMapping("license")
	public String license(@ModelAttribute LicenseDTO license) {
		
		System.out.println("branch : " +license);
		
		System.out.println("하..");
		
		/* SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); */
		profileService.license(license);
		
		
		return "profile/mainProfile";
	}
	/*select이긴 한데 ..*/
	
	@GetMapping("member_info_phone")
	public String member_info_phone(Model model,  HttpServletRequest request, @ModelAttribute MemBbDTO memBbDTO,HttpSession session) {
System.out.println("여기와?");
//		int no = Integer.parseInt(request.getParameter("no"));
//		System.out.println("!!!!!!!!!!!!!" + no);
//		List<MemDTO> profileList1 = profileService.member_info_phone(no);
		
		System.out.println(session.hashCode());
		System.out.println(session.getAttributeNames());
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		
		List<MemBbDTO> profileList1 = profileService.member_info_phone();
//		int no = profileList1.get(0).getNo();
//		System.out.println(no);
		System.out.println("================================" + profileList1);
		model.addAttribute("profileList1", profileList1);
		request.getSession().setAttribute("profileList1", profileList1);
		List<MemberInfoDTO> MList = profileService.memberInfo();/* no 매개변수로  */
//??		List<CareerDTO> CList = profileService.career();
		System.out.println("????????????????????????????????????????");
		System.out.println(MList);
		model.addAttribute("MList", MList);
		
		
		return "profile/mainProfile";
	}
	@GetMapping("member_address")
	public String member_address(Model model) {

		List<MemBbDTO> profileList2 = profileService.member_address();
		System.out.println(profileList2);
		model.addAttribute("profileList2", profileList2);
		
		return "profile/mainProfile";
	}
	
	@GetMapping("mainProfile")
	public String member_enrollDate(Model model) {

		List<MemBbDTO> member_enrollDate = profileService.member_enrollDate();
		System.out.println(member_enrollDate);
		model.addAttribute("profileList", member_enrollDate);
		
		return "profile/mainProfile";
	}
	
	@GetMapping("member_name")
	public String member_name(Model model) {

		List<DeptDTO> member_name = profileService.member_name();
		System.out.println(member_name);
		model.addAttribute("profileList", member_name);
		
		return "profile/mainProfile";
	}
}


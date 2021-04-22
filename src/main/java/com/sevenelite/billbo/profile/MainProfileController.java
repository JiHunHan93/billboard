package com.sevenelite.billbo.profile;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.BonusDTO;
import com.sevenelite.billbo.profile.model.dto.CareerDTO;
import com.sevenelite.billbo.profile.model.dto.CertificateDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;
import com.sevenelite.billbo.profile.model.dto.FamilyDTO;
import com.sevenelite.billbo.profile.model.dto.FinalAcademicDTO;
import com.sevenelite.billbo.profile.model.dto.LicenseDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
import com.sevenelite.billbo.profile.model.dto.ModifyDeptDTO1;
import com.sevenelite.billbo.profile.model.dto.ModifySpotDTO;
import com.sevenelite.billbo.profile.model.service.ProfileService;

@Controller
@RequestMapping("/profile/*")
public class MainProfileController {

	private final ProfileService profileService;

	@Autowired
	public MainProfileController(ProfileService profileService) {

		this.profileService = profileService;
	}
	//@RequestMapping(value = "mainProfile", method= {RequestMethod.GET, RequestMethod.POST})
	@GetMapping(value = "mainProfile")
	public String page(Model model, Authentication authentication) {

		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		System.out.println("로그인 회원번호");
		/* 멤버정보조회 */
		List<MemberInfoDTO> member = profileService.selectMemberInfo(user.getMemberno());
		/* 부서조회 */
		List<DeptDTO> dept = profileService.selectMemberDept(user.getMemberno());
		/* 이메일조회 */
		List<MemBbDTO> detailMem = profileService.selectMemberDetail(user.getMemberno());
		/* 부서변경이력 조회 */
		List<ModifyDeptDTO1> modidept = profileService.selectModifyDept(user.getMemberno());
		/* 직위변경이력 조회 */
		List<ModifySpotDTO> modispotDto = profileService.selectspot(user.getMemberno());
		/* 경력 */
		List<CareerDTO> careerDto = profileService.career(user.getMemberno());
		/* 상벌 */
		List<BonusDTO> bonusDto = profileService.bonus(user.getMemberno());
		/* 자격인줄 알았던 면허 */
		List<LicenseDTO> LicenseDto = profileService.selectLicense(user.getMemberno());
		/* 이게 자격 */
		List<CertificateDTO> certificateInsert = profileService.certificateInsert(user.getMemberno());
		/* 병역 */
		List<ArmyDTO> armySelect = profileService.armySelect(user.getMemberno());
		/* 학력 */
		List<FinalAcademicDTO> academic = profileService.academic(user.getMemberno());
		/* 정말 가 족같은 가족사항 */
		List<FamilyDTO> familySelect = profileService.familySelect(user.getMemberno());

		System.out.println(member + "오나???!?");
		System.out.println(dept + "이것도 오나???!?");
		System.out.println(detailMem + "이거도 제발");
		System.out.println(modidept + "이거도 제발Q");
		System.out.println(modispotDto + "이거도 제발시발");
		System.out.println(careerDto + "이거도 제발시발");
		System.out.println(bonusDto + "이거도 제발시발");
		System.out.println(LicenseDto + "젭알 되주세요");
		System.out.println(certificateInsert + "젭알 되주세요");
		System.out.println(armySelect + "이거 안되면 재입대한다");
		System.out.println(academic + "이쯤되면 그냥 되겠지..");
		System.out.println(familySelect + "마지막");

		model.addAttribute("member", member);
		model.addAttribute("dept", dept);
		model.addAttribute("detailMem", detailMem);
		model.addAttribute("modidept", modidept);
		model.addAttribute("modispotDto", modispotDto);
		model.addAttribute("careerDto", careerDto);
		model.addAttribute("bonusDto", bonusDto);
		model.addAttribute("LicenseDto", LicenseDto);
		model.addAttribute("certificateInsert", certificateInsert);
		model.addAttribute("armySelect", armySelect);
		model.addAttribute("academic", academic);
		model.addAttribute("familySelect", familySelect);

		return "profile/main";

	}
	 
	 

	/* 1 신상 */
	@PostMapping("main")
	public String memberInfo(@ModelAttribute MemberInfoDTO memberInfo, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		System.out.println("아 왜케안대");
		profileService.memberInfo(memberInfo);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		// List<MemberInfoDTO> memberInfo = profileService.main();

		System.out.println("왜 안오는거여 쉬벌?????");

		return "redirect:/profile/mainProfile2";
	}

//	 /*2 직위*/
	@PostMapping("joblevel")
	public String modifyspot(@ModelAttribute ModifySpotDTO modifyspot, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		profileService.modifyspot(modifyspot);

		System.out.println(modifyspot + "왜 안오는거여 쉬벌?????");

		return "redirect:/profile/mainProfile2";
	}

	/* 3 부서 */
	@PostMapping("part")
	public String modifydept(@ModelAttribute ModifyDeptDTO1 modifydept, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		System.out.println(modifydept);

		System.out.println("왜 안오는거여 쉬벌?????");
		profileService.modifydept(modifydept);

		return "redirect:/profile/mainProfile2";
	}

	/* 4.경력 */
	@PostMapping("career")
	public String career(@ModelAttribute CareerDTO career, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();

		System.out.println("왜 안오는거여 쉬벌?????");
		profileService.career(career);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		return "redirect:/profile/mainProfile2";
	}

	/* 4상벌내역 */
	@PostMapping("bonus")
	public String bonus(@ModelAttribute BonusDTO bonus, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();

		System.out.println("branch : " + bonus);

		System.out.println("오나!!!!!!!!!!!!!");

		profileService.bonusInsert(bonus);

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		return "redirect:/profile/mainProfile2";
	}

	/* 5.자격? */
	@PostMapping("certificate")
	public String certificate(@ModelAttribute CertificateDTO certificate, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();

		System.out.println("branch : " + certificate);

		System.out.println("오나!!!!!!!!!!!!!");

		profileService.certificate(certificate);

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println("131241414q");
		// List<CertificateDTO> certi =
		// profileService.selectCertificate(user.getMemberno());
		// model.addAttribute("certi", certi);
		return "redirect:/profile/mainProfile2";

	}

	/* 7.병역 */
	@PostMapping("army")
	public String armyInfo(@ModelAttribute ArmyDTO army, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		System.out.println("branch : " + army);

		System.out.println("오나!!!!!!!!!!!!!");

		profileService.armyInfo(army);

		System.out.println("요기는???");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		return "redirect:/profile/mainProfile2";
	}

	/* 8.학력 */
	@PostMapping("finalAcademic")
	public String finalAcademic(@ModelAttribute FinalAcademicDTO finalAcademic, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();

		System.out.println("branch : " + finalAcademic);

		System.out.println("하..");

		profileService.finalAcademic(finalAcademic);

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		return "redirect:/profile/mainProfile2";
	}

	/* 9.가족사항 */
	@PostMapping("family")
	public String family(@ModelAttribute FamilyDTO family, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();

		System.out.println("branch : " + family);

		System.out.println("하..");
		profileService.family(family);

		 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 

		return "redirect:/profile/mainProfile2";
	}

	/* 10.면허 */
	@PostMapping("license")
	public String license(@ModelAttribute LicenseDTO license, Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();


		System.out.println("branch : " + license);

		System.out.println("하..");

		/* SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); */
		profileService.license(license);

		return "redirect:/profile/mainProfile2";
	}
	
	/* 서버 터져서 주석 */
//	@PostMapping(value ="mainProfile2")
//	public String page2(@ModelAttribute MemDTO mem, Authentication authentication, Model model) {
//		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
	@RequestMapping(value = "mainProfile2", method= {RequestMethod.GET, RequestMethod.POST})
	public String page2(Model model, Authentication authentication) {

		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		System.out.println("로그인 회원번호");
		/* 멤버정보조회 */
		List<MemberInfoDTO> member = profileService.selectMemberInfo(user.getMemberno());
		/*멤버정보등록이력*/
		List<MemberInfoDTO> viewAllInfo = profileService.viewAllInfo(user.getMemberno());
		
		/* 부서조회 */
		List<DeptDTO> dept = profileService.selectMemberDept(user.getMemberno());
		
		/* 이메일조회 */
		List<MemBbDTO> detailMem = profileService.selectMemberDetail(user.getMemberno());
		/* 부서변경 조회 */
		List<ModifyDeptDTO1> modidept = profileService.selectModifyDept(user.getMemberno());
		/*부서등록이력 하단 조회*/
		List<ModifyDeptDTO1> viewMemberDept = profileService.viewMemberDept(user.getMemberno());
		/* 직위변경 조회 */
		List<ModifySpotDTO> modispotDto = profileService.selectspot(user.getMemberno());
		/* 직위조회*/
		List<ModifySpotDTO> viewModispotDto = profileService.viewModispotDto(user.getMemberno());
		
		/* 경력 */
		List<CareerDTO> careerDto = profileService.career(user.getMemberno());
		/* 경력 이력 조회 */
		List<CareerDTO> viewCareerDto = profileService.viewCareerDto(user.getMemberno());
		/* 상벌 */
		List<BonusDTO> bonusDto = profileService.bonus(user.getMemberno());
		/* 상벌 이력 */
		List<BonusDTO> viewBonusDto = profileService.viewBonusDto(user.getMemberno());
		/*면허 */
		List<LicenseDTO> LicenseDto = profileService.selectLicense(user.getMemberno());
		/*면허 */
		List<LicenseDTO> viewLicenseDto = profileService.viewLicenseDto(user.getMemberno());
		/* 자격 */
		List<CertificateDTO> certificateInsert = profileService.certificateInsert(user.getMemberno());
		/* 자격 이력 */
		List<CertificateDTO> viewCertificateInsert = profileService.viewCertificateInsert(user.getMemberno());
		/* 병역 */
		List<ArmyDTO> armySelect = profileService.armySelect(user.getMemberno());
		/* 병역이력 */
		List<ArmyDTO> viewArmySelect = profileService.viewArmySelect(user.getMemberno());
		/* 학력 */
		List<FinalAcademicDTO> academic = profileService.academic(user.getMemberno());
		/* 학력이력 */
		List<FinalAcademicDTO> viewAcademic = profileService.viewAcademic(user.getMemberno());
		/* 정말 가 족같은 가족사항 */
		List<FamilyDTO> familySelect = profileService.familySelect(user.getMemberno());
		/* 정말 가 족같은 가족사항 */
		List<FamilyDTO> viewFamilySelect = profileService.viewFamilySelect(user.getMemberno());

		
		/*신상정보 전체 조회용*/
		
		System.out.println(member + "오나???!?");
		System.out.println(dept + "이것도 오나???!?");
		System.out.println(detailMem + "이거도 제발");
		System.out.println(modidept + "이거도 제발Q");
		System.out.println(modispotDto + "이거도 제발시발");
		System.out.println(careerDto + "이거도 제발시발");
		System.out.println(bonusDto + "이거도 제발시발");
		System.out.println(LicenseDto + "젭알 되주세요");
		System.out.println(certificateInsert + "젭알 되주세요");
		System.out.println(armySelect + "이거 안되면 재입대한다");
		System.out.println(academic + "이쯤되면 그냥 되겠지..");
		System.out.println(familySelect + "마지막");

		model.addAttribute("member", member);
		model.addAttribute("viewAllInfo", viewAllInfo);
		
		model.addAttribute("dept", dept);
		model.addAttribute("viewMemberDept", viewMemberDept);
		
		model.addAttribute("detailMem", detailMem);
		model.addAttribute("modidept", modidept);
		model.addAttribute("modispotDto", modispotDto);
		model.addAttribute("viewModispotDto", viewModispotDto);
		
		model.addAttribute("careerDto", careerDto);
		model.addAttribute("viewCareerDto", viewCareerDto);
		
		model.addAttribute("bonusDto", bonusDto);
		model.addAttribute("viewBonusDto", viewBonusDto);
		
		model.addAttribute("LicenseDto", LicenseDto);
		model.addAttribute("viewLicenseDto", viewLicenseDto);
		
		model.addAttribute("certificateInsert", certificateInsert);
		model.addAttribute("viewCertificateInsert", viewCertificateInsert);
		
		model.addAttribute("armySelect", armySelect);
		model.addAttribute("viewArmySelect", viewArmySelect);
		
		model.addAttribute("academic", academic);
		model.addAttribute("viewAcademic", viewAcademic);
		
		model.addAttribute("familySelect", familySelect);
		model.addAttribute("viewFamilySelect", viewFamilySelect);

		return "profile/main2";

	}
	
	
	/* select이긴 한데 .. */

	@GetMapping("memberProfile")
	public String member_info_phone(Authentication authentication, Model model, HttpServletRequest request,
			@ModelAttribute MemBbDTO memBbDTO, HttpSession session) {
		System.out.println("여기와?");
//		int no = Integer.parseInt(request.getParameter("no"));
//		System.out.println("!!!!!!!!!!!!!" + no);
//		List<MemDTO> profileList1 = profileService.member_info_phone(no);
		List<MemBbDTO> profileList1 = profileService.mainProfile();
		System.out.println(profileList1);
		// int no =
		// System.out.println(no);

		System.out.println("================================" + profileList1);
		model.addAttribute("profileList1", profileList1);
		request.getSession().setAttribute("profileList1", profileList1);

//		List<MemberInfoDTO> MList = profileService.memberInfo();/* no 매개변수로  */
////??		List<CareerDTO> CList = profileService.career();
//		System.out.println("????????????????????????????????????????");
//		System.out.println(MList);
//		model.addAttribute("MList", MList);
//		

		return "profile/main";
	}

	@GetMapping("member_address")
	public String member_address(Model model) {

		List<MemBbDTO> profileList2 = profileService.member_address();
		System.out.println(profileList2);
		model.addAttribute("profileList2", profileList2);

		return "profile/main";
	}

//	@GetMapping("mainProfile")
//	public String member_enrollDate(Model model) {
//
//		List<MemBbDTO> member_enrollDate = profileService.member_enrollDate();
//		System.out.println(member_enrollDate);
//		model.addAttribute("profileList", member_enrollDate);
//		
//		return "profile/mainProfile";
//	}

	@GetMapping("member_name")
	public String member_name(Model model) {

		List<DeptDTO> member_name = profileService.member_name();
		System.out.println(member_name);
		model.addAttribute("profileList", member_name);

		return "profile/main";
	}

	/*
	 * @PostMapping("modify") public String mainModify(Model model, @ModelAttribute
	 * MemberInfoDTO memberInfo, Authentication authentication) {
	 * 
	 * UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
	 * 
	 * List<MemberInfoDTO> modifyMember =
	 * profileService.modifyMember(user.getMemberno());
	 * 
	 * return "profile/main"; }
	 */
}

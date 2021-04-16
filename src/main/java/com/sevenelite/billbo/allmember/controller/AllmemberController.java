package com.sevenelite.billbo.allmember.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sevenelite.billbo.allmember.model.dto.CertificateListDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndArmyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndFamilyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;
import com.sevenelite.billbo.allmember.model.service.AllMemberService;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;

@Controller
@RequestMapping("/allEmployee")
public class AllmemberController {

	private final AllMemberService allMemberService;
	
	
	@Autowired
	public AllmemberController(AllMemberService allMemberService) {
		this.allMemberService = allMemberService;
		
	}
	
	@GetMapping("/selectList")
	public String selectAllEmployeeList(Model model) {
		
		List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> allMemberList = allMemberService.selectAllEmployeeList();
		
		for(MemberAndMemberInfoAndDeptAndModifyDeptDTO allMember : allMemberList) {
			System.out.println("allMember : " + allMember);
		}
		
		model.addAttribute("allMemberList", allMemberList);
		
		return "allmember/allmember";
	}

	
	  @GetMapping("/detail") 
	  public ModelAndView detailMemberList(HttpServletRequest request, HttpServletResponse response , Model model) {
		  
		  ModelAndView mv = new ModelAndView();
		  int no = Integer.parseInt(request.getParameter("no"));
		  
		  //신상정보 기본
		  System.out.println("no : " + no);
		  mv.addObject("no",no);
		  System.out.println("no : " + no);
		  mv.setViewName("allmember/detail");
		  List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> memberDetail = allMemberService.memberDetail(no);
		  model.addAttribute("memberDetail", memberDetail);
		  //은행정보
		  List<MemberInfoDTO> bankInfo = allMemberService.selectBankInfo(no);
		  model.addAttribute("bankInfo", bankInfo);
		  System.out.println(bankInfo);
		 
		  //병역정보
		  List<MemberAndArmyDTO> armyInfo = allMemberService.selectArmyInfo(no);
		  model.addAttribute("armyInfo", armyInfo);
		  System.out.println(armyInfo);
		  
		  List<MemberAndFamilyDTO> familyInfo = allMemberService.selectFamilyInfo(no);
		  model.addAttribute("familyInfo", familyInfo);
		  System.out.println(familyInfo);
		  
		  List<CertificateListDTO> certificateInfo = allMemberService.selectCertiInfo(no);
		  model.addAttribute("certificateInfo", certificateInfo);
		  System.out.println(certificateInfo);
		  
		  return mv;
		  
		 
	  }
	 
}

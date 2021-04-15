package com.sevenelite.billbo.allmember.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;
import com.sevenelite.billbo.allmember.model.service.AllMemberService;

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
}

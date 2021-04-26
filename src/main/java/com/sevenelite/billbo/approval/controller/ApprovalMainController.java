package com.sevenelite.billbo.approval.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.ListDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ListWaitingApprovalDTO;
import com.sevenelite.billbo.approval.model.service.ApprovalService;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;


@Controller
@RequestMapping("/approval/*")
public class ApprovalMainController {
	
	private final ApprovalService appro;
	
	@Autowired
	public ApprovalMainController(ApprovalService appro) {
		this.appro = appro;
	}
	
	@GetMapping(value={"main", "/"})
	public String registPage(Model model, Authentication authentication) {
		
		UserDetailsVO loginInfo = (UserDetailsVO) authentication.getPrincipal();
		
		/* 1. 기안문서 조회 */
		List<ListDraftingDTO> draftList = appro.selectAllDraftingList(loginInfo.getMemberno());
		
		for(int i = 0; i < draftList.size(); i++) {
			System.out.println("가져온 " + i + "번 째 값 : " + draftList.get(i));
		}
		
		/* 부서 정보 조회 */
		ApproDeptDTO dept = appro.selectLoginDept(loginInfo.getMemberno());
		
		/* 직위도 필요할듯 */
		ApproSpotDTO spot = appro.selectLoginSpot(loginInfo.getMemberno());
		
		/* 모든 회원 조회(부서와 직위가 등록된 회원) */
		List<MemBbDTO> memList = appro.selectMemList();
		
		System.out.println("가져온 부서 정보 : " + dept);
		System.out.println("가져온 직위 정보 : " + spot);
		
		/* 2. 결재 대기 문서 */
		List<ListWaitingApprovalDTO> waitAppro = appro.selectWaitingApproval(new ListWaitingApprovalDTO(dept.getDeptCode(), spot.getSpotCode(), "대기"));
		
		for(int m = 0; m < waitAppro.size(); m++) {
			
			System.out.println("가져온 " + m + "번 째 결재 대기중인 문서 값 : " + waitAppro.get(m).getMemberNo());
			
			if(waitAppro.get(m).getMemberNo() > 0) {
				
				for(int n = 0; n < memList.size(); n++ ) {
					
					if(waitAppro.get(m).getMemberNo() == memList.get(n).getNo()) {
						waitAppro.get(m).setMemberName(memList.get(n).getName());
					}
					
				}
				
			}
			
			System.out.println("가져온 " + m + "번 째 결재 대기중인 문서 값 : " + waitAppro.get(m));
			
		}
		
		
		/* 기안문서  */
		model.addAttribute("draftList", draftList);
		
		/* 결재 대기 문서 */
		model.addAttribute("waitAppro", waitAppro);
		
		return "approval/main";
	}
	
	@GetMapping("drafting")
	public String draftingMagin() {
		
		System.out.println("가즈아");
		
		return "approval/drafting";
	}
	
	
	@GetMapping("ajax")
	public String ajaxMain() {
		
		System.out.println("가즈아 ajax");
		
		return "approval/ajax";
	}
	
	
	@GetMapping("test")
	public String modalTest() {
		
		System.out.println("성공하고싶다");
		
		return "approval/test";
	}
	
}

package com.sevenelite.billbo.approval.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ApproLineMemDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;
import com.sevenelite.billbo.approval.model.dto.MemListLine;
import com.sevenelite.billbo.approval.model.dto.multitudeLineMem;
import com.sevenelite.billbo.approval.model.service.ApprovalService;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;

@Controller
@RequestMapping("/approval/document/*")
public class ApprovaldocumentController {
	
	private final ApprovalService appro;
	
	@Autowired
	public ApprovaldocumentController(ApprovalService appro) {
		this.appro = appro;
	}
	
	/* 휴가신청서 */
	@GetMapping("1004")
	public String vacation(Model model, Authentication authentication) {
		
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		System.out.println("로그인한 회원 번호 : " + user.getMemberno());
		
		/* 부서 정보 조회 */
		ApproDeptDTO dept = appro.selectLoginDept(user.getMemberno());
		
		/* 직위도 필요할듯 */
		ApproSpotDTO spot = appro.selectLoginSpot(user.getMemberno());
		
		/* 결과 */
		System.out.println("조회해온 소속 부서 : " + dept);
		System.out.println("조회해온 해당 직위 : " + spot);

		/* 부서 정보 추가하기 */
		model.addAttribute("dept", dept);
		
		model.addAttribute("spot", spot);
		
		return "approval/document/1004";
	}
	
	
	/* Controller에서 로그인 정보 가져오기 */
	@GetMapping("1008")
	public String testMap(Authentication authentication) {
		
		/* 1. authentication 토큰을 사용하여 로그인 정보를 UserDetailsVO에 담는다. */
		UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
		
		/* 2. UserDetailsVO에 있는 getter를 이용하여 ID, NAME, NO를 가져온다. */
		System.out.println("1. username : " + userDetails.getUsername());
		System.out.println("2. membername : " + userDetails.getMembername());
		System.out.println("3. memberno : " + userDetails.getMemberno());
		
		System.out.println("1008로 이동");
		
		return "approval/test";
	}
	
	/* Controller에서 로그인 정보 가져오기 */
	@GetMapping("1010")
	public String testMap1010(Authentication authentication) {
		
		/* 1. authentication 토큰을 사용하여 로그인 정보를 UserDetailsVO에 담는다. */
		UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
		
		/* 2. UserDetailsVO에 있는 getter를 이용하여 ID, NAME, NO를 가져온다. */
		System.out.println("1. username : " + userDetails.getUsername());
		System.out.println("2. membername : " + userDetails.getMembername());
		System.out.println("3. memberno : " + userDetails.getMemberno());
		
		System.out.println("1010으로 이동");
		
		return "approval/ajax";
	}
	
	@PostMapping(value="1004")
	public String vacationInsert(@ModelAttribute("lineMemDTO") multitudeLineMem lineMemDTO, @ModelAttribute("spotDTO") ApproSpotDTO spotDTO, @ModelAttribute("deptDTO") ApproDeptDTO deptDTO, @RequestParam(required=false) String memberno, @RequestParam(required=false) String docNo, @RequestParam(required=false) String time, @RequestParam(required=false) String draftDate, @RequestParam(required=false) String draftDept, @ModelAttribute("vacation") FormVacationDTO vacation) {
		
		System.out.println("연차신청서 : " + vacation);
		System.out.println("로그인 회원번호 : " + memberno);
		System.out.println("작성 년월일 : " + draftDate);
		System.out.println("작성 시분초 : " + time);
		
		System.out.println("추가된 정보 deptDTO : " + deptDTO);
		System.out.println("추가된 정보 spotDTO : " + spotDTO);
		
		/* 받아온 List타입으로 정리 */
//		System.out.println("추가된 정보 lineMemDTO : " + lineMemDTO);
		/* 동일한 name의 값을 담을 List, List 사이즈로 접근. JSP에서는 추가한 for문 i에 맞춰서 카운트 계산을하여 보내줘도 됨 */
//		System.out.println("추가된 정보 lineMemDTO List : " + lineMemDTO);
//		System.out.println("추가된 정보 lineMemDTO List의 사이즈 : " + lineMemDTO.getLineMem().size());
//		for(int i = 0; i < lineMemDTO.getLineMem().size(); i++) {
//			System.out.println("가져온 값 :" + i+ "번째 값은? : " + lineMemDTO.getLineMem().get(i));
//		}
		
		/* 반차가 아닐시 처리 */
		if(vacation.getHalfDayPoint() == null) {
			vacation.setHalfDayPoint("");
		} 
		
		/* 사번, 문서번호 */
		vacation.setMemberno(Integer.parseInt(memberno));
		vacation.setPaymentNo(Integer.parseInt(docNo));
		
		/* 01. 연차신청서 Insert  */
		int result = appro.insertVacation(vacation);
		
		/* 02. 기안문서  Insert And 하위 테이블(1. 결재선사원, 2.승인여부, 3.참조/열람, 4.부재/위임)*/
		int result2 = 0;
		
		if(result > 0) {
			
			/* 1) 기안문서 DTO */
			ApproDraftingDTO one = new ApproDraftingDTO(java.sql.Date.valueOf(draftDate), "대기", "연차신청서", vacation.getAnnualReason(), "N", Integer.parseInt(memberno), 1004);
			
			/* 2) 결재선사원 DTO */
			/* 2-1) 썸네일 주입 처리 */
			
			/* View에서 받아야될 정보 : 동일 name일 경우 List로 담기는지? 해당 결재인의 lineKinds(근무형태), deptCode, spotCode */
			/* draftNo(기안번호) 시퀀스 조회해서 넣기 */
			ApproLineMemDTO two = new ApproLineMemDTO(vacation.getAnnualReason(), "대기", "", "휴가", "A1", "R5");
			
			/* 1) 기안문서 Insert와 함께 필요한 하위 테이블 정보 파라미터로 전달하기 */
			result2 = appro.insertDrafting(one, two);
		}
		
		System.out.println("테이블 2개 Insert 결과 : " + result2);
		
		return "redirect:/approval/main";
	}
	
	@PostMapping(value="1004LineCheck", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String lineCheck(@RequestParam(required=false) String test) {
		
		Gson gson = new GsonBuilder().create();
		
		System.out.println("ajax로 가져온 test : " + test);
		
		/* 1. 모든 회원 조회 */
	    List<MemBbDTO> memList = appro.selectMemList();
	    
	    for(MemBbDTO mem : memList) {
	    	System.out.println(mem);
	    }
	    
	    /* 2. 조회한 회원 리스트로 상세정보 조회 */
		/* 2-1. 부서 정보 조회 */
		List<ApproDeptDTO> deptList = appro.selectLoginDeptList(memList);
	    
		/* 2-2. 직위도 필요할듯 */
		List<ApproSpotDTO> spotList = appro.selectLoginSpotList(memList);
		
		/* 결과 출력 */ 
		for(ApproDeptDTO dept : deptList) {
			System.out.println(dept);
		}
	    
	    for(ApproSpotDTO spot : spotList) {
	    	System.out.println(spot);
	    }
		
	    List<MemListLine> memListLine = new ArrayList<>();
	    MemListLine line = null;
	    for(int i = 0; i < memList.size(); i++) {
	    	
	    	if(deptList.get(i).getMemberNameDept() != null) {
	    		
	    		for(int x = 0; x < memList.size(); x++) {
	    			
	    			if(deptList.get(i).getMemberNoDept() == spotList.get(x).getMemberNoSpot()) {
	    				line = new MemListLine();
	    				line.setMemberNoLine(deptList.get(i).getMemberNoDept());
	    				line.setMemberNameLine(deptList.get(i).getMemberNameDept());
	    				line.setDeptCodeLine(deptList.get(i).getDeptCode());
	    				line.setDeptNameLine(deptList.get(i).getDeptName());
	    				line.setSpotCodeLine(spotList.get(x).getSpotCode());
	    				line.setSpotNameLien(spotList.get(x).getSpotName());
	    				memListLine.add(line);
	    			} 
	    			
	    			}
	    		}
	    	
	    		
	    	}
	    	
	    /* 필요한 반환 값은? */
	    /* 1. memberNo, 2. memberName, 3.deptCode, 4.deptName, 5.spotCode, 6.spotName */
	    System.out.println("담은 line 출력하기");
	    for(MemListLine memLine : memListLine) {
	    	System.out.println(memLine);
	    }
	    
		return gson.toJson(memListLine);
	}
	
//	@PostMapping(value="1004LineCheck", produces="application/json; charset=UTF-8")
//	@ResponseBody
//	public String lineCheck(HttpServletRequest request, @ModelAttribute("vacation") FormVacationDTO vacation) {
//		
//		Gson gson = new GsonBuilder().create();
//		
//		/* 0. Ajax로 전송받은 key, value 확인 */
//		Map<String,String[]> paymentInfo = new TreeMap<String,String[]>(request.getParameterMap());
//		
//		for(String key : paymentInfo.keySet()) {
//			String[] value = paymentInfo.get(key);
//			
//			for(int i=0; i<value.length; i++) {
//				System.out.println((key + " : " + value[i]));
//			}
//		}
//		
//		int a = Integer.parseInt(((String[])paymentInfo.get("jihun[7][value]"))[0]);
//		System.out.println("가져온 값 a : " + a);
//		System.out.println(((String[])paymentInfo.get("jihun[0][value]"))[0]);
//		System.out.println(((String[])paymentInfo.get("jihun[10][value]"))[0]);
//		
//		return gson.toJson("AJA통신 완료");
//	}
	
}

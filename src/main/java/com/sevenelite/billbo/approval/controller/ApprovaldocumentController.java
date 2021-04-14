package com.sevenelite.billbo.approval.controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;
import com.sevenelite.billbo.approval.model.service.ApprovalService;
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
		
		return "approval/document/1004";
	}
	
	@PostMapping(value="1004")
	public String vacationInsert(@ModelAttribute("spotDTO") ApproSpotDTO spotDTO, @ModelAttribute("deptDTO") ApproDeptDTO deptDTO, @RequestParam(required=false) String memberno, @RequestParam(required=false) String docNo, @RequestParam(required=false) String time, @RequestParam(required=false) String draftDate, @RequestParam(required=false) String draftDept, @ModelAttribute("vacation") FormVacationDTO vacation) {
			
		System.out.println("연차신청서 : " + vacation);
		System.out.println("로그인 회원번호 : " + memberno);
		System.out.println("작성 년월일 : " + draftDate);
		System.out.println("작성 시분초 : " + time);
		
		System.out.println("추가된 정보 deptDTO : " + deptDTO);
		System.out.println("추가된 정보 spotDTO : " + spotDTO);
		
		/* 반차가 아닐시 처리 */
		if(vacation.getHalfDayPoint() == null) {
			vacation.setHalfDayPoint("");
		} 
		
		/* 사번, 문서번호 */
		vacation.setMemberno(Integer.parseInt(memberno));
		vacation.setPaymentNo(Integer.parseInt(docNo));
		
		/* 01. 연차신청서 Insert  */
		int result = appro.insertVacation(vacation);
		
		/* 02. 기안문서  Insert */
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyMMdd");
//		SimpleDateFormat timeFormat = new SimpleDateFormat("hh:mm:ss");
		
		
//		new ApproDraftingDTO(vacation.getStartDate(), "대기", "", "", "", 1, 1);
//		int result2 = appro.insertDrafting(new ApproDraftingDTO(draftDate, "대기", "연차신청서", vacation.getAnnualReason(), "N", memberno, 1004));
		
		
		return "approval/main";
	}
	
//	@PostMapping(value="1004", produces="application/json; charset=UTF-8")
//	@ResponseBody
//	public String vacationInsert(HttpServletRequest request, @ModelAttribute("vacation") FormVacationDTO vacation) {
//		
//		Gson gson = new GsonBuilder().create();
//		
//		/* 0. Ajax로 전송받은 key, value 확인 */
//	      Map<String,String[]> paymentInfo = new TreeMap<String,String[]>(request.getParameterMap());
//	      
//	      for(String key : paymentInfo.keySet()) {
//	         String[] value = paymentInfo.get(key);
//
//	         for(int i=0; i<value.length; i++) {
//	            System.out.println((key + " : " + value[i]));
//	         }
//	      }
//		
//	      int a = Integer.parseInt(((String[])paymentInfo.get("jihun[7][value]"))[0]);
//	      System.out.println("가져온 값 a : " + a);
//	      System.out.println(((String[])paymentInfo.get("jihun[0][value]"))[0]);
//	      System.out.println(((String[])paymentInfo.get("jihun[10][value]"))[0]);
//	      
//		return gson.toJson("AJA통신 완료");
//	}
	
}

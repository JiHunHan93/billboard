package com.sevenelite.billbo.calendar.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sevenelite.billbo.calendar.model.dto.CalDTO;
import com.sevenelite.billbo.calendar.model.service.CalService;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;

/* 
 * =========================== 캘린더 컨트롤러 ===========================
 * 47: ------- 1. /main 매핑주소를 받아 캘린더 JSP로 매핑 (/main) 
 * 59: ------- 2. Ajax를 이용해 일정정보를 map에 담아 반환 (/getMain) 
 * 66: ------- 3. Ajax로 일정 추가 정보를 받아 insert (/PostMain) 
 * 97: ------- 4. Ajax로 일정 수정정보를 받아 update (/postUpdate) 
 * 127: ------ 5. Ajax로 일정번호를 받아 상태를 update (/postDelete)
 * 142: ------ 6. Ajax로 숏컷의 정보를 받아 insert (/postInsert)
 * 166: ------ 7. Ajax로 드래그 된 일정의 정보를 받아 update (/postDraggUpdate) 
 * 187: ------ 8. Ajax로 드랍 된 일정의 정보를 받아 update (/postDropUpdate) 
 * =================================================================
*/

@Controller
@RequestMapping("/calendar/*")
public class CalendarController {
	
	private final CalService calService;
	
	@Autowired
	public CalendarController(CalService calService) {
		this.calService = calService;
	}
	// 캘린더 JSP로 매핑
	@GetMapping("/main")
	public String CalendarMain(Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();		// 세션에 있는 사원의 정보를 담고있는 DTO
		int userNo = user.getMemberno();										// 세션에 있는 사번을 받아온다.
		String deptCode = calService.selectDept(userNo);						// 세션에 있는 사번을 이용해 부서코드를 받아온다.
		System.out.println(deptCode);											
		model.addAttribute("userNo", userNo);									// 담아온 사번을 JSP에서 사용하기 위해 model에 담아 전송한다.
		model.addAttribute("deptCode", deptCode);								// 담아온 부서코드를 JSP에서 사용하기 위해 model에 담아 전송한다.
		return "calendar/calendar";												// 매핑 할 JSP의 패키지 경로를 반환한다.
	}
	// DB상에 존재하는 모든 일정정보를 조회하여 List에 담아 Ajax를 이용해 JSP로 전송
	@RequestMapping(value = "calendar/getMain", method = RequestMethod.POST)
	@ResponseBody
	public List<Map<String,CalDTO>> AjaxCalendarMain() {						// 조회해온 일정정보를 JSP로 반환하기 위해 List타입으로 메소드 생성
		List<Map<String,CalDTO>> calendarInfo = calService.selectCal();			// 조회해온 일정정보를 List로 담는다.
		return calendarInfo;													// List를 요청받은 Ajax로 반환한다.
	}
	
	@RequestMapping(value = "/postMain", method = RequestMethod.POST)
	@ResponseBody
	public void insertEvt(@ModelAttribute CalDTO calDTO
			            , HttpServletRequest request
			            , Authentication authentication) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();		// 세션에 존재하는 사원의 정보를 담고있는 DTO
		int userNo = user.getMemberno();										// 세션에 존재하는 사번을 받아온다.
		String deptCode = calService.selectDept(userNo);						// 받아온 사번을 이용하여 부서코드를 조회하여 담는다.
		String title = request.getParameter("title");							// Ajax에서 전송한 일정의 제목을 받아온다.
		String start = request.getParameter("start");							// Ajax에서 전송한 일정의 시작일을 받아온다.
		String end = request.getParameter("end");								// Ajax에서 전송한 일정의 종료일을 받아온다.
		String body = request.getParameter("body");								// Ajax에서 전송한 일정의 내용을 받아온다.
		String category = request.getParameter("category");						// Ajax에서 전송한 일정의 분류를 받아온다.
		System.out.println("userNo : " + userNo
				         + "\ntitle : " + title 
				         + "\nstart : " + start
				         + "\nend : " + end
				         + "\nbody : " + body
				         + "\ncategory : " + category
				         + "\ndeptCode : " + deptCode);
		calDTO.setMemberNo(userNo);												// 받아온 사번을 DTO에 set한다.
		calDTO.setCode(deptCode);												// 조회 한 부서코드를 DTO에 set한다.
		calDTO.setTitle(title);													// Ajax로 담아온 일정의 제목을 DTO에 set한다.
		calDTO.setStart(start);													// Ajax로 담아온 일정의 시작일을 DTO에 set한다.
		calDTO.setEnd(end);														// Ajax로 담아온 일정의 종료일을 DTO에 set한다.
		calDTO.setBody(body);													// Ajax로 담아온 일정의 내용을 DTO에 set한다.
		calDTO.setCalType(category);											// Ajax로 담아온 일정의 분류를 DTO에 set한다.
		System.out.println("calDTO : [" + calDTO + "]");		
		calService.insertEvt(calDTO);											// DTO의 정보를 이용하여 일정 정보를 DB에 insert한다.
	}
	
	@RequestMapping(value = "/postUpdate", method = RequestMethod.POST)
	@ResponseBody
	public void updateEvt(@ModelAttribute CalDTO calDTO
			            , HttpServletRequest request) {
		if(request.getParameter("no") != null) {
			String noStr = request.getParameter("no").trim();					// Ajax에서 전송한 일정의 번호를 받아 공백을 제거 한 뒤 담아온다.
			int no = Integer.parseInt(noStr);									// Ajax에서 받아온 일정의 번호를 파싱하여 정수형태로 정제한다.
			String title = request.getParameter("title");						// Ajax에서 전송한 일정의 제목을 담아온다.
			String start = request.getParameter("start");						// Ajax에서 전송한 일정의 시작일을 담아온다.
			String end = request.getParameter("end");							// Ajax에서 전송한 일정의 종료일을 담아온다.
			String body = request.getParameter("body");							// Ajax에서 전송한 일정의 내용을 담아온다.
			String category = request.getParameter("category");					// Ajax에서 전송한 일정의 분류를 담아온다.
			System.out.println("no : " + no 
					         + "\ntitle : " + title 
			                 + "\nstart : " + start 
			                 + "\nend : " + end 
			                 + "\nbody : " + body 
			                 + "\ncategory : " + category);
			calDTO.setNo(no);													// Ajax로 담아온 일정의 번호를 DTO에 set한다.
			calDTO.setTitle(title);												// Ajax로 담아온 일정의 제목을 DTO에 set한다.
			calDTO.setStart(start);												// Ajax로 담아온 일정의 시작일을 DTO에 set한다.
			calDTO.setEnd(end);													// Ajax로 담아온 일정의 종료일을 DTO에 set한다.
			calDTO.setBody(body);												// Ajax로 담아온 일정의 내용을 DTO에 set한다.
			calDTO.setCalType(category);										// Ajax로 담아온 일정의 분류를 DTO에 set한다.
			System.out.println("calDTO : [" + calDTO + "]");
			calService.updateEvt(calDTO);										// DTO의 정보를 이용하여 일정을 update한다.
		}
		System.out.println("재방문");
	}
	
	@RequestMapping(value = "/postDelete", method = RequestMethod.POST)
	@ResponseBody
	public void deleteEvt(@ModelAttribute CalDTO calDTO
			            , HttpServletRequest request) {
		if(request.getParameter("no") != null) {
			String noStr = request.getParameter("no").trim();					// Ajax에서 전송한 일정의 번호를 받아 공백을 제거 한 뒤 담아온다.
			int no = Integer.parseInt(noStr);									// Ajax에서 받아온 일정의 번호를 파싱하여 정수형태로 정제한다.
			System.out.println("no : " + no);
			calDTO.setNo(no);													// Ajax로 담아온 일정의 번호를 DTO에 set한다.
			System.out.println("calDTO : [" + calDTO + "]");
			calService.deleteEvt(calDTO);										// DTO의 정보를 이용하여 일정의 상태를 변경한다.
		}
		System.out.println("재방문");
	}
	
	@RequestMapping(value = "/postInsert", method = RequestMethod.POST)
	@ResponseBody
	public void insertDropEvt(@ModelAttribute CalDTO calDTO
					        , HttpServletRequest request
					        , Authentication authentication) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal(); 	// 세션에 있는 사원의 정보를 담고있는 DTO
		int userNo = user.getMemberno();										// 세션에 존재하는 사번을 받아온다.
		String deptCode = calService.selectDept(userNo);						// 받아온 사번을 이용하여 부서코드를 조회하여 담는다.
		String title = request.getParameter("title");							// Ajax에서 전송한 일정의 제목을 담아온다.
		String start = request.getParameter("start");							// Ajax에서 전송한 일정의 시작일을 담아온다.
		String end = request.getParameter("end");								// Ajax에서 전송한 일정의 종료일을 담아온다. 
		System.out.println("userNo : " + userNo 
				         + "\ntitle : " + title 
				         + "\nstart : " + start 
				         + "\ndeptCode : " + deptCode);
		calDTO.setMemberNo(userNo);												// 받아온 사번을 DTO에 set한다.
		calDTO.setTitle(title);													// Ajax로 담아온 일정의 제목을 DTO에 set한다.
		calDTO.setStart(start);													// Ajax로 담아온 일정의 시작일을 DTO에 set한다.
		calDTO.setEnd(end);														// Ajax로 담아온 일정의 종료일을 DTO에 set한다.
		calDTO.setCode(deptCode);												// 조회해온 부서코드를 DTO에 set한다.
		System.out.println("calDTO : [" + calDTO + "]");
		calService.insertDropEvt(calDTO);										// DTO의 정보를 이용해 일정을 insert한다.
	}

	@RequestMapping(value = "/postDraggUpdate", method = RequestMethod.POST)
	@ResponseBody
	public void draggUpdate(@ModelAttribute CalDTO calDTO
			              , HttpServletRequest request) {
		if(request.getParameter("no") != null) {
			String noStr = request.getParameter("no").trim();					// Ajax에서 전송한 일정의 번호를 받아 공백을 제거 한 뒤 담아온다.
			int no = Integer.parseInt(noStr);									// Ajax에서 받아온 일정의 번호를 파싱하여 정수형태로 정제한다.
			String start = request.getParameter("start");						// Ajax에서 전송한 일정의 시작일을 담아온다.
			String end = request.getParameter("end");							// Ajax에서 전송한 일정의 종료일을 담아온다.
			System.out.println("no : " + no
					         + "\nstart : " + start 
					         + "\nend : " + end);
			calDTO.setNo(no);													// Ajax로 담아온 일정의 번호를 DTO에 set한다.
			calDTO.setStart(start);												// Ajax로 담아온 일정의 시작일을 DTO에 set한다.
			calDTO.setEnd(end);													// Ajax로 담아온 일정의 종료일을 DTo에 set한다.
			System.out.println("calDTO : [" + calDTO + "]");
			calService.draggEvt(calDTO);										// DTO의 정보를 이용하여 일정을 update한다.
		}
		System.out.println("재방문");
	}
	
	@RequestMapping(value = "/postDropUpdate", method = RequestMethod.POST)
	@ResponseBody
	public void dropUpdate(@ModelAttribute CalDTO calDTO
			             , HttpServletRequest request) {
		if(request.getParameter("no") != null) {
			String noStr = request.getParameter("no").trim();					// Ajax에서 전송한 일정의 번호를 받아 공백을 제거 한 뒤 담아온다.
			int no = Integer.parseInt(noStr);									// Ajax에서 받아온 일정의 번호를 파싱하여 정수형태로 정제한다.
			String start = request.getParameter("start");						// Ajax에서 전송한 일정의 시작일을 담아온다.
			String end = request.getParameter("end");							// Ajax에서 전송한 일정의 종료일을 담아온다.
			System.out.println("no : " + no
					         + "\nstart : " + start 
					         + "\nend : " + end);
			calDTO.setNo(no);													// Ajax로 담아온 일정의 번호를 DTO에 set한다.
			calDTO.setStart(start);												// Ajax로 담아온 일정의 시작일을 DTO에 set한다.
			calDTO.setEnd(end);													// Ajax로 담아온 일정의 종료일을 DTo에 set한다.
			System.out.println("calDTO : [" + calDTO + "]");
			calService.dropEvt(calDTO);											// DTO의 정보를 이용하여 일정을 update한다.
		}
		System.out.println("재방문");
	}
}

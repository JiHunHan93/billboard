package com.sevenelite.billbo.workhour.main;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import
org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import
org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import
com.sevenelite.billbo.workhour.work.model.service.WorkStatusService;

@Controller 
@SessionAttributes("memberno")
public class WorkDetailController {

	private final WorkStatusService workStatusService;

	@Autowired public WorkDetailController(WorkStatusService service) {
		this.workStatusService = service; }
	//출근 현황 보기
	@GetMapping("work/status") 
	public String workDetailController(StatusAndWorkDTO workStatusDTO, Principal principal,Model model) {

		List<StatusAndWorkDTO> statusList = workStatusService.selectAllStatus();
		
		for(StatusAndWorkDTO testList : statusList) {
			System.out.println(statusList);
		}
//		System.out.println(statusList.get(0).getCommute());
//		SimpleDateFormat dateF = new SimpleDateFormat("hh:mm");
//		
//		String date = dateF.format(statusList.get(0).getCommute());
//		
//		System.out.println(date);
//		
//		String StrDate = 
		
//		statusList.get(0).setCommute(date);
		
		model.addAttribute("statusList", statusList);
		principal.getName();
		System.out.println("관리자 : " + principal);
		System.out.println("==================================="); 
																												
																															
		return "workhour/workDetail";

	} 
	
	   /* Controller에서 로그인 정보 가져오기 */
	   @GetMapping("/work/detail")
	   public String testMap(Authentication authentication) {
	      
	      /* 1. authentication 토큰을 사용하여 로그인 정보를 UserDetailsVO에 담는다. */
	      UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
	      
	      /* 2. UserDetailsVO에 있는 getter를 이용하여 ID, NAME, NO를 가져온다. */
	      System.out.println("1. username : " + userDetails.getUsername());
	      System.out.println("2. membername : " + userDetails.getMembername());
	      System.out.println("3. memberno : " + userDetails.getMemberno());
	      
	      return "redirect:/";
	   }
	   
	
	//출근 등록하기
	@GetMapping("/work/regist")
	public void registForm() {
		
	}
	
	@PostMapping("/work/regist")
	public String registWork(@ModelAttribute StatusAndWorkDTO status, RedirectAttributes rttr, HttpServletRequest request,Authentication authentication) {
		
		System.out.println(System.currentTimeMillis());
		Date today = new java.util.Date(System.currentTimeMillis());
		
		System.out.println(today);
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String formatDate = format.format(today);
		UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
		int userno = userDetails.getMemberno();
		System.out.println(formatDate);
		
		
		StatusAndWorkDTO workList =  new StatusAndWorkDTO();
	    workList.setDate(formatDate);
	    workList.setMemNo(userno);
	    
		if(workStatusService.registWork(workList)) {
			rttr.addFlashAttribute("message" , "출근이 등록 되었습니다.");
			
		}
		return "redirect:/work/detail";
	}
	//퇴근하기
	@PostMapping("/work/update")
	public String updateWork(@ModelAttribute StatusAndWorkDTO status, Model model, RedirectAttributes rttr, Authentication authentication, HttpServletRequest request) throws ParseException  {
		
//			HttpSession session = request.getSession();
//			Enumeration<String> attrs = session.getAttributeNames();
//			while(attrs.hasMoreElements()) {
//				String s = attrs.nextElement();
//				System.out.println("attr : " + s);
//			}
		
			UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
			int userno = userDetails.getMemberno();
			
			
			Date dateType = workStatusService.selectDate(userno);
			
			System.out.println(dateType);
			
			String dateStr = DateFormatUtils.format(dateType, "yyyy-MM-dd HH:mm:ss");
			
			System.out.println(dateStr);
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			Date date = format.parse(dateStr);
			
			System.out.println(date);
			
			StatusAndWorkDTO status1 = new StatusAndWorkDTO();
			
			System.out.println("근무날짜 : "  + date);

			status1.setDate(dateStr);
			status1.setMemNo(userno);
			
			System.out.println(status1);
			
			if(workStatusService.updateWork(status1)) {
				System.out.println(userDetails);
				rttr.addFlashAttribute("message", "퇴근하자");
			};
			
			ModelAndView mv = new ModelAndView();
			model.addAttribute("StatusAndWorkDTO", status1);
			mv.setViewName("statusList"); 
			
			return "redirect:http://127.0.0.1:8001/billbo/work/status";
	}
	//상세보기 
	
	/*
	 * @GetMapping("/work/sequence")
	 * 
	 * @ResponseBody public ModelAndView sequenceWork(HttpServletRequest request,
	 * HttpServletResponse response, Model model) {
	 * 
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("work/WorkModify"); int
	 * no = Integer.parseInt(request.getParameter("no")); mv.addObject("no", no);
	 * System.out.println(no); List<StatusAndWorkDTO> detailInfo =
	 * workStatusService.sequenceWork(no); model.addAttribute("detailInfo",
	 * detailInfo);
	 * 
	 * return mv; }
	 */
	
}	

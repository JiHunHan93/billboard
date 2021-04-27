package com.sevenelite.billbo.workhour.main;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import
org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import
org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import
com.sevenelite.billbo.workhour.work.model.service.WorkStatusService;

@Controller 
public class WorkDetailController {

	private final WorkStatusService workStatusService;

	@Autowired public WorkDetailController(WorkStatusService service) {
		this.workStatusService = service; }
	
	
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
		
		SimpleDateFormat workDateformat = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat commutFormat = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
		
		String workDate = workDateformat.format(today);
		String commute = commutFormat.format(today);
		
		UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
		int userno = userDetails.getMemberno();
		System.out.println("workDate : " + workDate);
		System.out.println("commute : " + commute);
		
		StatusAndWorkDTO workList =  new StatusAndWorkDTO();
	    workList.setDate(workDate);
	    workList.setCommute(commute);
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
		
			Date leaveTime = new java.util.Date(System.currentTimeMillis());
			SimpleDateFormat lworkFormat = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
			String leaveWork = lworkFormat.format(leaveTime);
			UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
			int userno = userDetails.getMemberno();
			Date date = new java.util.Date(System.currentTimeMillis());
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
			
			String dateFormat = format.format(date);
			StatusAndWorkDTO workList =  new StatusAndWorkDTO();
			
			workList.setLwork(leaveWork);
			workList.setMemNo(userno);
			workList.setDate(dateFormat);
			if(workStatusService.updateWork(workList)) {
				System.out.println(userDetails);
				rttr.addFlashAttribute("message", "퇴근하자");
			};
			
			ModelAndView mv = new ModelAndView();
			model.addAttribute("StatusAndWorkDTO", status);
			mv.setViewName("statusList"); 
			
			return "redirect:http://127.0.0.1:8001/billbo/work";
	}
}
	 
	

package com.sevenelite.billbo.workhour.main;

import java.security.Principal;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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

import com.sevenelite.billbo.member.model.dto.MemDTO;
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
	@GetMapping("work/detail") 
	public String workDetailController(StatusAndWorkDTO workStatusDTO, Principal principal,Model model) {

		List<StatusAndWorkDTO> statusList = workStatusService.selectListstatus();
		
		for(StatusAndWorkDTO testList : statusList) {
			System.out.println(testList);
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
	
	//출근 등록하기
	@GetMapping("/work/regist")
	public void registForm() {
		
	}
	
	@PostMapping("/work/regist")
	public String registWork(@ModelAttribute StatusAndWorkDTO status, RedirectAttributes rttr, HttpServletRequest request) {
		
		if(workStatusService.registWork(status)) {
			rttr.addFlashAttribute("message" , "출근이 등록 되었습니다.");
		}
		return "redirect:/work/detail";
	}
	//퇴근하기
	@PostMapping("/work/update")
	public String updateWork(@ModelAttribute StatusAndWorkDTO Memno, Model model, RedirectAttributes rttr, Principal principal, HttpServletRequest request)  {
		
			System.out.println("!!!!!!!!!" + Memno.getMemNo());
			HttpSession session = request.getSession();
			Enumeration<String> attrs = session.getAttributeNames();
			while(attrs.hasMoreElements()) {
				String s = attrs.nextElement();
				System.out.println("attr : " + s);
			}
			UserDetailsVO loginNo = (UserDetailsVO) session.getAttribute("memberno");
			System.out.println("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM : " + loginNo);
			if(workStatusService.updateWork(loginNo)) {
				rttr.addFlashAttribute("message", "퇴근하자");
			};
			ModelAndView mv = new ModelAndView();
			model.addAttribute("StatusAndWorkDTO", Memno);
			System.out.println("STATUS : " + Memno);
			mv.setViewName("statusList"); 
			principal.getName();
			
			return "redirect:/work/detail";
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

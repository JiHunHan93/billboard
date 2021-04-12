package com.sevenelite.billbo.workhour.main;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import
org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import
org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import
com.sevenelite.billbo.workhour.work.model.service.WorkStatusService;

@Controller public class WorkDetailController {

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
	@GetMapping("/work/update")
	public String updateWork(StatusAndWorkDTO status, Model model, RedirectAttributes rttr)  {
			 model.addAttribute("StatusAndWorkDTO", status);
			if(workStatusService.updateWork(status)) {
				rttr.addFlashAttribute("message", "퇴근하자");
			}
			 
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

package com.sevenelite.billbo.workhour.main;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import
org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import
org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@GetMapping("/work/regist")
	public void registForm() {
		
	}
	
	@PostMapping("/work/regist")
	public String registWork(@ModelAttribute StatusAndWorkDTO status, RedirectAttributes rttr, HttpServletRequest request) {
		
		if(workStatusService.registWork(status)) {
			rttr.addFlashAttribute("message" , "출근이 등록 되었습니다.");
		}
		return "workhour/workDetail";
	}
	
	@GetMapping("work/update")
	public String String(@ModelAttribute StatusAndWorkDTO status, Model model, HttpServletRequest request, RedirectAttributes rttr) {
		
		if(workStatusService.updateWork(status)) {
			rttr.addFlashAttribute("message", "퇴근이 등록되었습니다.");
	};
	
	List<StatusAndWorkDTO> statusList = workStatusService.selectListstatus();
	model.addAttribute("statusList", statusList);
	
	return "workhour/workDetail";
	
}	
	
	}

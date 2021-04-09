package com.sevenelite.billbo.workhour.main;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import
org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import
org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.sevenelite.billbo.workhour.work.model.dto.WorkStatusDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkTypeDTO;
import
com.sevenelite.billbo.workhour.work.model.service.WorkStatusService;

@Controller public class WorkDetailController {

	private final WorkStatusService workStatusService;

	@Autowired public WorkDetailController(WorkStatusService service) {
		this.workStatusService = service; }

	@GetMapping("work/detail") 
	public String workDetailController(@ModelAttribute WorkStatusDTO workStatusDTO, Principal principal,Model model, WorkTypeDTO type) {

		List<WorkStatusDTO> statusList = workStatusService.selectListstatus();
		
		for(WorkStatusDTO testList : statusList) {
			System.out.println(testList);
		}
		System.out.println(statusList.get(0).getCommute());
		SimpleDateFormat dateF = new SimpleDateFormat("EEEEE hh:mm");
		
		String date = dateF.format(statusList.get(0).getCommute());
		
		System.out.println(date);
		
//		String StrDate = 
		
//		statusList.get(0).setCommute(date);
		
		principal.getName();
		
		model.addAttribute("statusList", statusList);
		System.out.println("관리자 : " + principal);
		System.out.println("==================================="); 



		return "workhour/workDetail";

	} 

}

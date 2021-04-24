package com.sevenelite.billbo.workhour.main;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sevenelite.billbo.workhour.work.model.dto.WorkDeptAndMemberDTO;
import com.sevenelite.billbo.workhour.work.model.service.WorkDeptService;

@Controller
public class WorkDepartmentController {
	
	@Autowired
	private WorkDeptService workDeptService;
    
	public WorkDepartmentController(WorkDeptService dept) {
		this.workDeptService = dept;
	}

	@GetMapping("work/department")
		public String workDepartment(Model model) {		
		List<WorkDeptAndMemberDTO> workDept = workDeptService.selectList(); 
		
		for(WorkDeptAndMemberDTO testList : workDept) {
			System.out.println("workDept : " + workDept);
			
			model.addAttribute("workDept", workDept);
		}
		
		
	return "workhour/workDepartment";
	}
}

package com.sevenelite.billbo.workhour.main;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		public String workDepartment() {
		
		List<WorkDeptAndMemberDTO> workDept = workDeptService.selectList(); 
	
		
		
	return "workhour/workDepartment";
	}
}

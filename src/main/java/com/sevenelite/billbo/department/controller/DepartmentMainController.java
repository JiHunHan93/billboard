package com.sevenelite.billbo.department.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;
import com.sevenelite.billbo.allmember.model.service.AllMemberService;
import com.sevenelite.billbo.department.model.dto.DepartmentDTO;
import com.sevenelite.billbo.department.model.service.DepartmentService;

@Controller
@RequestMapping("/department/*")
public class DepartmentMainController {
	
	private final DepartmentService departmentService;
	
	@Autowired
	public DepartmentMainController(DepartmentService departmentService) {
		this.departmentService = departmentService;
		
	}
	@GetMapping(value={"department", "/"})
	public String department() {
		
		return "department/department";
	}
	
	@GetMapping(value={"department-business", "/"})
	public String departmentBusiness(Model model) {
		
		List<DepartmentDTO> allBusinessDepartmentList = departmentService.selectBusinessDepartmentList();
		
		for(DepartmentDTO allBusinessDepartment : allBusinessDepartmentList) {
			System.out.println("allBusinessDepartment : " + allBusinessDepartment);
		}
		
		model.addAttribute("allBusinessDepartmentList", allBusinessDepartmentList);
		
		
		return "department/department-business";
	}
	
	@GetMapping(value={"department-management", "/"})
	public String departmentManagement(Model model) {
		
		List<DepartmentDTO> allManagementDepartmentList = departmentService.selectManagementDepartmentList();
		
		for(DepartmentDTO allManagementDepartment : allManagementDepartmentList) {
			System.out.println("allManagementDepartment : " + allManagementDepartment);
		}
		
		model.addAttribute("allManagementDepartmentList", allManagementDepartmentList);
		
		
		return "department/department-management";
	}
	
	@GetMapping(value={"department-production", "/"})
	public String departmentProduction(Model model) {
		
		List<DepartmentDTO> allProductionDepartmentList = departmentService.selectProductionDepartmentList();
		
		for(DepartmentDTO allProductionDepartment : allProductionDepartmentList) {
			System.out.println("allProductionDepartment : " + allProductionDepartment);
		}
		
		model.addAttribute("allProductionDepartmentList", allProductionDepartmentList);
		
		
		return "department/department-production";
	}
	
	 @GetMapping(value={"detail", "/"}) 
	  public ModelAndView detailMemberList(HttpServletRequest request, HttpServletResponse response , Model model) {
		  
		  ModelAndView mv = new ModelAndView();
		  int no = Integer.parseInt(request.getParameter("no"));
		  
		  //신상정보 기본
		  System.out.println("no : " + no);
		  mv.addObject("no",no);
		  System.out.println("no : " + no);
		  mv.setViewName("allmember/detail");
		  List<DepartmentDTO> memberDetail = departmentService.memberDetailProfile(no);
		  model.addAttribute("memberDetail", memberDetail);
		  
		  return mv;
	 }
}

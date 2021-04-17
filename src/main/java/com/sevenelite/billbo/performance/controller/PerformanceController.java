//package com.sevenelite.billbo.performance.controller;
//
//import java.util.List;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.sevenelite.billbo.performance.model.dto.PerformanceDTO;
//import com.sevenelite.billbo.performance.model.service.PerformanceService;
//
//
//
//@Controller
//@RequestMapping("/performance/*")
//public class PerformanceController {
//
//	private final PerformanceService pfService;
//	
//	public PerformanceController(PerformanceService pfService) {
//		this.pfService = pfService;
//	}
//	
//	@GetMapping("main")
//	public String selectPerList(Model model) {
//		
//		List<PerformanceDTO> perList = pfService.selectPer();
//		model.addAttribute("perList", perList);
//		return "a";
//	}
//}

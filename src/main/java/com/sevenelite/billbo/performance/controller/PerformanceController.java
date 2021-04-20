package com.sevenelite.billbo.performance.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sevenelite.billbo.performance.model.dto.PerformanceListDTO;
import com.sevenelite.billbo.performance.model.dto.ReviewListDTO;
import com.sevenelite.billbo.performance.model.service.PerformanceService;

@Controller
@RequestMapping("/performance/*")
public class PerformanceController {

	private final PerformanceService pfService;
	
	@Autowired
	public PerformanceController(PerformanceService pfService) {
		this.pfService = pfService;
	}
	
	@GetMapping("main")
	public String selectPerList(Model model) {
		List<PerformanceListDTO> perList = pfService.selectPer();
		model.addAttribute("perList", perList);
		System.out.println("!!!!!!!!!!!!!" + perList );
		
		return "performance/Performance";
	}
	
	/*
	 * @GetMapping("review") public String perReview() {
	 * 
	 * return "performance/PerformanceReview"; }
	 */

	@GetMapping("detail")
	@ResponseBody
	public ModelAndView perReview(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("performance/PerformanceReview");
		int no = Integer.parseInt(request.getParameter("no"));
		
		mv.addObject("no", no);
		
		List<ReviewListDTO> perReviewList = pfService.reviewList(no);
		model.addAttribute("perReviewList", perReviewList);
		return mv;
	}
}

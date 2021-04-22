package com.sevenelite.billbo.performance.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@PostMapping("detail")
	public String insertReview(@ModelAttribute ReviewListDTO reviewDTO, RedirectAttributes redirect, Model model, HttpServletRequest request ) {
		System.out.println("????" + reviewDTO);
	      
	      String no = request.getParameter("memberNo");
	      
	      int Mno = Integer.parseInt(no);
	      
	      reviewDTO.setMemberNo(Mno);
	      
	      System.out.println("no : " + no);
	      
	      int score1 = Integer.parseInt(request.getParameter("achOne"));
	      int score2 = Integer.parseInt(request.getParameter("achTwo"));
	      int score3 = Integer.parseInt(request.getParameter("achThree"));
	      int score4 = Integer.parseInt(request.getParameter("abilOne"));
	      int score5 = Integer.parseInt(request.getParameter("abilTwo"));
	      int score6 = Integer.parseInt(request.getParameter("abilThree"));
	      int score7 = Integer.parseInt(request.getParameter("abilFour"));
	      int score8 = Integer.parseInt(request.getParameter("attOne"));
	      int score9 = Integer.parseInt(request.getParameter("attTwo"));
	      int score10 = Integer.parseInt(request.getParameter("attThree"));
	      
	      int sum = score1 + score2 + score3 + score4 + score5 + score6 + score7 + score8 + score9 + score10;
	      
	      int avg = sum / 10;
	      
	      reviewDTO.setReviewAvg(avg);
	      
	      String grade = "";
	      if(avg < 65) {
	         grade = "D";
	      } else if(avg <= 74) {
	         grade = "C";
	      } else if(avg <= 84) {
	         grade = "B";
	      } else if(avg <= 92) {
	         grade = "A";
	      } else if(avg > 92) {
	         grade = "A+";
	      }
	      
	      reviewDTO.setReviewGrade(grade);
	      
	      System.out.println("@@@@@@@@" + reviewDTO);
		if (!pfService.insertReview(reviewDTO)) {
			redirect.addFlashAttribute("message", "인사평가를 반영하는데 실패하였습니다");
		}
		
		
		redirect.addFlashAttribute("message", "인사평가 성공");
		
		List<PerformanceListDTO> perList = pfService.selectPer();
		model.addAttribute("perList", perList);
		
		return "performance/Performance";
	}
	
	@GetMapping("myReview")
	public String selectReviewList(Model model) {
		List<PerformanceListDTO> myReviewList = pfService.selectMyPer();
		model.addAttribute("myReviewList", myReviewList);
		System.out.println("!!!!!!!!!!!!!" + myReviewList);
		
		return "performance/MyPerformance";
	}
	
}

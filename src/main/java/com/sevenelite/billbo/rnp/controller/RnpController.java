package com.sevenelite.billbo.rnp.controller;

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

import com.sevenelite.billbo.rnp.model.dto.ModifyDeptAndMemAndRnpDTO;
import com.sevenelite.billbo.rnp.model.dto.RnpDTO;
import com.sevenelite.billbo.rnp.model.service.RnpService;

@Controller
@RequestMapping("/Rnp/*")
public class RnpController {

	private final RnpService rnpService;

	@Autowired
	public RnpController(RnpService rnpService) {
		this.rnpService = rnpService;
	}

	@GetMapping("main")
	public String selectRnpList(Model model) {

		List<RnpDTO> rnpList = rnpService.selectRnp();
		model.addAttribute("rnpList", rnpList);

		return "rnp/Rnp";
	}

	
	  @GetMapping("detail")  
	  @ResponseBody 
	  public ModelAndView detailRnp(HttpServletRequest request,
	  HttpServletResponse response, Model model) {
	  
	  ModelAndView mv = new ModelAndView(); 
	  mv.setViewName("rnp/RnpDetail"); 
	  int no = Integer.parseInt(request.getParameter("no"));
	  
	  mv.addObject("no", no);	
	  
	  List<RnpDTO> detailRnp = rnpService.detailRnp(no);
	  System.out.println("!!!!!!!!" + detailRnp);
	  model.addAttribute("rnpDetailInfo", detailRnp);
	  
	  return mv; 
	}
	 
	 @GetMapping("insert")
	 public String insertRnp() {
		 
		 return "rnp/RnpInsert"; 
	 }
	 
	 @PostMapping("main")
	 public String registRnp(@ModelAttribute RnpDTO rnpBody, RedirectAttributes redirect, Model model ) {
		 
		 if (!rnpService.registRnp(rnpBody)) {
			 redirect.addFlashAttribute("message", "상벌 등록 실패하였습니다");
		 }
		 
		 redirect.addFlashAttribute("message", "게시글 등록 성공");
		 
		 List<RnpDTO> rnpList = rnpService.selectRnp();
		 model.addAttribute("rnpList", rnpList);
		 
		 return "rnp/main";
	 }
	
}

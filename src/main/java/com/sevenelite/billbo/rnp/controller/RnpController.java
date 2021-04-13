package com.sevenelite.billbo.rnp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}

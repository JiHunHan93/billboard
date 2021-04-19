package com.sevenelite.billbo.holiday.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.holiday.model.dto.HolidayDTO;
import com.sevenelite.billbo.holiday.model.service.HolidayService;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;

@Controller
@RequestMapping("/holiday/*")
public class HolidayController {

	
	private final HolidayService holidayService;
	
	@Autowired
	public HolidayController(HolidayService holidayService) {
		this.holidayService = holidayService;
	}
	
	@GetMapping("list")
	public String MyHoliday(Model model, Authentication authentication) {
		
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		
		List<HolidayDTO> holidayInfo = holidayService.selectHolidayInfo(user.getMemberno());
		
		for(HolidayDTO holiday : holidayInfo) {
			System.out.println("holiday : " + holiday);
		}
		
		model.addAttribute("holidayInfo", holidayInfo);
		
		return "holiday/holidayList";
	}
}

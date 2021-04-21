package com.sevenelite.billbo.calendar.controller;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sevenelite.billbo.calendar.model.dto.CalDTO;
import com.sevenelite.billbo.calendar.model.service.CalService;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;

@Controller
@RequestMapping("/calender2/*")
public class CalenderController2 {
	
	private final CalService calService;
	
	@Autowired
	public CalenderController2(CalService calService) {
		this.calService = calService;
	}
	
	@GetMapping("/main")
	public String CalenderMain(Authentication authentication, Model model) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		int userNo = user.getMemberno();
		String deptCode = calService.seletDept(userNo);
		System.out.println(deptCode);
		model.addAttribute("userNo", userNo);
		model.addAttribute("deptCode", deptCode);
		return "Calender/calender2";
	}
	
	@RequestMapping(value = "calender2/getMain", method = RequestMethod.POST)
	@ResponseBody
	public List<Map<String,CalDTO>> AjaxCalenderMain() {

		List<Map<String,CalDTO>> calendarInfo = calService.selectCal();
		System.out.println(calendarInfo.get(0).get("start"));
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(f.format(calendarInfo.get(0).get("start")));
		f.format(calendarInfo.get(0).get("start"));
		System.out.println("아직 컨트롤러" + calendarInfo);

		return calendarInfo;
	}
	
	@RequestMapping(value = "/postMain", method = RequestMethod.POST)
	@ResponseBody
	public void insertEvt(@ModelAttribute CalDTO calDTO, HttpServletRequest request, Authentication authentication) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		int userNo = user.getMemberno();
		String title = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String body = request.getParameter("body");
		String category = request.getParameter("category");
		String deptCode = calService.seletDept(userNo);
		System.out.println("userNo : " + userNo 
				         + "\ntitle : " + title 
				         + "\nstart : " + start 
				         + "\nend : " + end 
				         + "\nbody : " + body 
				         + "\ncategory : " + category 
				         + "\ndeptCode : " + deptCode);
		calDTO.setMemberNo(userNo);
		calDTO.setTitle(title);
		calDTO.setStart(start);
		calDTO.setEnd(end);
		calDTO.setBody(body);
		calDTO.setCalType(category);
		calDTO.setCode(deptCode);
		System.out.println("calDTO : [" + calDTO + "]");
		calService.insertEvt(calDTO);
	}
	
	@RequestMapping(value = "/postUpdate", method = RequestMethod.POST)
	@ResponseBody
	public void updateEvt(@ModelAttribute CalDTO calDTO, HttpServletRequest request) {
		if(request.getParameter("no") != null) {
			String noStr = request.getParameter("no").trim();
			int no = Integer.parseInt(noStr);
			String title = request.getParameter("title");
			String start = request.getParameter("start");
			String end = request.getParameter("end");
			String body = request.getParameter("body");
			String category = request.getParameter("category");
			System.out.println("no : " + no 
					         + "\ntitle : " + title 
			                 + "\nstart : " + start 
			                 + "\nend : " + end 
			                 + "\nbody : " + body 
			                 + "\ncategory : " + category);
			calDTO.setNo(no);
			calDTO.setTitle(title);
			calDTO.setStart(start);
			calDTO.setEnd(end);
			calDTO.setBody(body);
			calDTO.setCalType(category);
			System.out.println("calDTO : [" + calDTO + "]");
			calService.updateEvt(calDTO);
		}
		System.out.println("재방문");
	}
	
	@RequestMapping(value = "/postDelete", method = RequestMethod.POST)
	@ResponseBody
	public void deleteEvt(@ModelAttribute CalDTO calDTO, HttpServletRequest request) {
		if(request.getParameter("no") != null) {
			String noStr = request.getParameter("no").trim();
			int no = Integer.parseInt(noStr);
			System.out.println("no : " + no);
			calDTO.setNo(no);
			System.out.println("calDTO : [" + calDTO + "]");
			calService.deleteEvt(calDTO);
		}
		System.out.println("재방문");
	}
	
	@RequestMapping(value = "/postInsert", method = RequestMethod.POST)
	@ResponseBody
	public void insertDropEvt(@ModelAttribute CalDTO calDTO, HttpServletRequest request, Authentication authentication) {
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		int userNo = user.getMemberno();
		String title = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String deptCode = calService.seletDept(userNo);
		System.out.println("userNo : " + userNo 
				         + "\ntitle : " + title 
				         + "\nstart : " + start 
				         + "\ndeptCode : " + deptCode);
		calDTO.setMemberNo(userNo);
		calDTO.setTitle(title);
		calDTO.setStart(start);
		calDTO.setEnd(end);
		calDTO.setCode(deptCode);
		System.out.println("calDTO : [" + calDTO + "]");
		calService.insertDropEvt(calDTO);
	}

}

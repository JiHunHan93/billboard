package com.sevenelite.billbo.calender.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sevenelite.billbo.calender.model.dto.CalDTO;

@Controller
@RequestMapping("/calender2/*")
public class CalenderController2 {
	
	@GetMapping("/main")
	public String CalenderMain() {
		return "Calender/calender2";
	}
	
	@RequestMapping("calender2/getMain")
	@ResponseBody
	public Map<String, CalDTO> AjaxCalenderMain() {

		Map<String, CalDTO> javaMap = new HashMap<String, CalDTO>();
		
		javaMap.put("evt1", new CalDTO("db이벤트1", "2021-04-04", "2021-04-06", false) );
//		javaMap.put("evt2", new CalDTO("db이벤트2", "2021-04-23", "2021-04-26", false) );
		
		System.out.println("아직 컨트롤러" + javaMap);
		
		return javaMap;
	}
	
	@PostMapping(value="main/post")
	public String CalenderPostMain(HttpServletRequest request) {
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");

		String arr = request.getParameter("arr"); 
		System.out.println(arr);
		
		return "redirect: http://127.0.0.1:8001/billbo/calender2/main.php";
	}

}

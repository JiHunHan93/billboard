package com.sevenelite.billbo.calendar.controller;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sevenelite.billbo.calendar.model.dto.CalDTO;
import com.sevenelite.billbo.calendar.model.service.CalService;

@Controller
@RequestMapping("/calender2/*")
public class CalenderController2 {
	
	private final CalService calService;
	
	@Autowired
	public CalenderController2(CalService calService) {
		this.calService = calService;
	}
	
	@GetMapping("/main")
	public String CalenderMain() {
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
	public void asd(@ModelAttribute CalDTO calDTO, HttpServletRequest request) {
		String title = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String category = request.getParameter("category");
		System.out.println("title : " + title + "start : " + start + "end : " + end + "category : " + category);
		calDTO.setTitle(title);
		calDTO.setStart(start);
		calDTO.setEnd(end);
		calDTO.setCalType(category);
		System.out.println(calDTO);
		calService.insertEvt(calDTO);
	}
	
//	@RequestMapping("calender2/getMain")
//	@ResponseBody
//	public HashMap<String, Object> AjaxCalenderMain() {
//		
//		HashMap<String, Object> map = new HashMap<String, Object>();
////		CalMap.put("evt1", new CalDTO("db이벤트1", "2021-04-04", "2021-04-06", false) );
////		CalMap.put("evt2", new CalDTO("db이벤트2", "2021-04-23", "2021-04-26", false) );
//		
//		List<CalDTO> calendarInfo = calService.selectCal();
//		System.out.println("아직 컨트롤러" + calendarInfo);
//		
//		map.put("cal", calendarInfo);
//		
//		return map;
//	}
	
//	@RequestMapping("calender2/getMain")
//	@ResponseBody
////	public List<Map<String,CalDTO>> AjaxCalenderMain() {
//	public String AjaxCalenderMain() {	
//		
//		Gson gson = new GsonBuilder().create();
//		
////		CalMap.put("evt1", new CalDTO("db이벤트1", "2021-04-04", "2021-04-06", false) );
////		CalMap.put("evt2", new CalDTO("db이벤트2", "2021-04-23", "2021-04-26", false) );
//		
//		List<Map<String,CalDTO>> calendarInfo = calService.selectCal();
//		System.out.println("아직 컨트롤러" + calendarInfo);
//		
//		System.out.println("타입" + calendarInfo.get(0));
//		System.out.println("타입" + calendarInfo.get(0).getClass().getName());
//		System.out.println(calendarInfo.get(0).toString());
//		System.out.println("타입 : " + calendarInfo.get(0).toString().getClass().getName());
//		
//	    return gson.toJson(calendarInfo.get(0).toString());
//	}
	
	@PostMapping("/insert")
	@ResponseBody
	public String CalenderPostMain(HttpServletRequest request) {
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");

		String arr = request.getParameter("arr"); 
		System.out.println(arr);
		
		return "redirect: http://127.0.0.1:8001/billbo/calender2/main.php";
	}

}

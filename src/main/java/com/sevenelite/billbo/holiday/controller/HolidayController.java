package com.sevenelite.billbo.holiday.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.holiday.model.dto.HolidayDTO;
import com.sevenelite.billbo.holiday.model.dto.MemberHolidayDTO;
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

		List<MemberHolidayDTO> holidaylist = holidayService.selectHolidayList(user.getMemberno());



		model.addAttribute("holidaylist", holidaylist);

		return "holiday/holidayList";
	}

	@PostMapping("insert")
	public String registHoliday(Model model, @ModelAttribute MemberHolidayDTO holiday, Authentication authentication, HttpServletRequest request) throws ParseException {
		//로그인 된 사원 번호 가지고 오기
		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		int memberno = user.getMemberno();

		//시작날짜, 종료날짜 구하기 
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		java.util.Date start = format.parse(startDate);
		java.util.Date end = format.parse(endDate);

		//시작날짜 및 종료날짜를 String으로 parsing
		String st = format.format(start);
		String ed = format.format(end);
		//시작날짜 종료날짜를 연도,월,일 로 subString으로 자른다.
		String startYear = st.substring(0,4);
		String startMonth = st.substring(5,7);
		String startDay = st.substring(8,10);
		String endYear = ed.substring(0,4);
		String endMonth = ed.substring(5,7);
		String endDay = ed.substring(8,10);
		
		//String으로 변환된 문자열들을 다 합치고 int로 parsing한다
		int FStart = Integer.parseInt(startYear + startMonth + startDay);
		int FEnd = Integer.parseInt(endYear + endMonth + endDay);

		String newStart = Integer.toString(FStart);
		String newEnd = Integer.toString(FEnd);
		System.out.println("newStart :" + newStart);
		System.out.println("newEnd :" + newEnd);
		
		//종료날짜와 시작날짜를 int로 parsing을 해줬으니 두개의 차로 인하여 term을 구한다.
		int term = FEnd - FStart;

		System.out.println("start : " + st);
		System.out.println("end : " + ed);
		System.out.println("Fs: "  + FStart);
		System.out.println("FEnd: "  + FEnd);
		System.out.println("term: "  + term);

		//memberno와 term을 DTO에 set해주고 service로 전달하기위한준비를한다.
		holiday.setTerm(term);
		holiday.setMemberNo(memberno);

		System.out.println(holiday);

		holidayService.registHoliday(holiday);
		//해당 사원 상단프로필 정보 가져오는 List
		List<HolidayDTO> holidayInfo = holidayService.selectHolidayInfo(user.getMemberno());

		model.addAttribute("holidayInfo", holidayInfo);
		//해단 사원 하단 휴가 현황 정보 가져오는 List
		List<MemberHolidayDTO> holidaylist = holidayService.selectHolidayList(user.getMemberno());

		model.addAttribute("holidaylist", holidaylist);
		// holiday폴더에있는 holidayList.jsp 화면을 띄어준다
		return "holiday/holidayList";

	}

	@PostMapping("modify")
	public String modifyHoliday(Model model, @ModelAttribute MemberHolidayDTO holiday2,Authentication authentication, HttpServletRequest request ) throws ParseException {

		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		int memberno = user.getMemberno();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		java.util.Date start = format.parse(startDate);
		java.util.Date end = format.parse(endDate);

		//String시작
		//추가해야되는것 날짜끼리먼저계산
		String st = format.format(start);
		String ed = format.format(end);
		String startYear = st.substring(0,4);
		String startMonth = st.substring(5,7);
		String startDay = st.substring(8,10);
		String endYear = ed.substring(0,4);
		String endMonth = ed.substring(5,7);
		String endDay = ed.substring(8,10);
		int FStart = Integer.parseInt(startYear + startMonth + startDay);
		int FEnd = Integer.parseInt(endYear + endMonth + endDay);

		String newStart = Integer.toString(FStart);
		String newEnd = Integer.toString(FEnd);
		System.out.println("newStart :" + newStart);
		System.out.println("newEnd :" + newEnd);



		int term = FEnd - FStart;

		System.out.println("start : " + st);
		System.out.println("end : " + ed);
		System.out.println("Fs: "  + FStart);
		System.out.println("FEnd: "  + FEnd);
		System.out.println("term: "  + term);

		holiday2.setTerm(term);
		holiday2.setMemberNo(memberno);


		holidayService.modifyHoliday(holiday2);


		List<HolidayDTO> holidayInfo = holidayService.selectHolidayInfo(user.getMemberno());

		model.addAttribute("holidayInfo", holidayInfo);

		List<MemberHolidayDTO> holidaylist = holidayService.selectHolidayList(user.getMemberno());





		model.addAttribute("holidaylist", holidaylist);



		return "holiday/holidayList";
	}

	@PostMapping("delete")
	public String deleteHoliday(Model model, Authentication authentication,HttpServletRequest request, @ModelAttribute MemberHolidayDTO holiday2 ) {

		UserDetailsVO user = (UserDetailsVO) authentication.getPrincipal();
		int memberno = user.getMemberno();

		int deleteNo = Integer.parseInt(request.getParameter("no"));


		holidayService.deleteHoliday(deleteNo);
		
		List<HolidayDTO> holidayInfo = holidayService.selectHolidayInfo(user.getMemberno());

		model.addAttribute("holidayInfo", holidayInfo);

		List<MemberHolidayDTO> holidaylist = holidayService.selectHolidayList(user.getMemberno());

		model.addAttribute("holidaylist", holidaylist);

		return "holiday/holidayList";
	}
}

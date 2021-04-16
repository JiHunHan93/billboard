package com.sevenelite.billbo.workhour.main;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;
import com.sevenelite.billbo.workhour.work.model.service.WorkService;

@Controller
@RequestMapping("/") public class WorkMainController {

	private final WorkService workService;

	@Autowired public WorkMainController(WorkService workService) {
		this.workService = workService; }

	@GetMapping("work")
	public String workController(Model model,Principal principal,Authentication authentication ) {
			
			Calendar calendar = new GregorianCalendar();
			
			int hours = calendar.get(Calendar.HOUR_OF_DAY);
			int miniutes = calendar.get(Calendar.MINUTE);
			int seconds = calendar.get(Calendar.SECOND);
			
			
			UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
			int no = userDetails.getMemberno();
			System.out.println(no);
			
			
			System.out.println("관리자 : " + principal);
			System.out.println("===========================================" + no);
			
			Date commute = new Date(System.currentTimeMillis());
			Date lwork = new Date(System.currentTimeMillis());
			
			/////////////////////////////////////////////////////
			SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
			String commuteTime = format.format(commute);
			String leaveTime = format.format(lwork);
			////////////////////////////////////////////////////
			
			System.out.println("commute : " + commuteTime);
			System.out.println("lwork : " + leaveTime);
			
			List<WorkDTO> workInfo = workService.selectWorkList(no); //
			System.out.println(workInfo);  
			model.addAttribute("workInfo", workInfo);
			
			//출근시간 
	         String commuteTimeFormat = format.format(commute);
	         String[] splitCommute = commuteTimeFormat.split(":");
	         int hour = Integer.parseInt(splitCommute[0]);
	         int minute = Integer.parseInt(splitCommute[1]);
	         int second = Integer.parseInt(splitCommute[2]);
	         //출근시간 스플릿
	         System.out.println("시간::::: " + hour);
	         System.out.println("분:::::::" + minute);
	         System.out.println("초 ::::::" + second);
	         //퇴근시간
	         String leaveTimeFormat = format.format(lwork);
	         String[] splitLeave = leaveTimeFormat.split(":");
	         String lhour = splitLeave[0];
	         String lminute = splitLeave[1];
	         String lsecond = splitLeave[2];
	         
	         if(hour > 8) {
	        	 int overH = hour - 8;
	        	 int overM = minute;
	        	 int overS = second;
	        	 String overResult = overH + ":" + overM + ":" + overS;
	        	 System.out.println(overResult + " 시간 초과");
	         } else {
	        	 System.out.println("정상 근무");
	         }
	         
	         String timestr = hour + ":" + minute + ":" + second;
	         System.out.println(timestr);
	         	
	         //근무시간 
	         int workH = hour;
	         int workM = minute;
	         int workS = second;
	         String workResult = workH + ":" + workM + ":" +workS;
	         
			return "workhour/workList";

	}
	
}
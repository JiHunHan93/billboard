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
			int userno = userDetails.getMemberno();
			
			
			System.out.println("관리자 : " + principal);
			
			Date commute = new Date(System.currentTimeMillis());
			Date lwork = new Date(System.currentTimeMillis());
			
			/////////////////////////////////////////////////////
			SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
			String commuteTime = format.format(commute);
			String leaveTime = format.format(lwork);
			////////////////////////////////////////////////////
			
			System.out.println("commute : " + commuteTime);
			System.out.println("lwork : " + leaveTime);
			
			
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
	         int lhour = Integer.parseInt(splitLeave[0]);
	         int lminute = Integer.parseInt(splitLeave[1]);
	         int lsecond = Integer.parseInt(splitLeave[2]);
	         
	         if(hour > 8) {
	        	 int overH = hour - 8;
	        	 int overM = minute;
	        	 int overS = second;
	        	 String overResult = overH + ":" + overM + ":" + overS;
	        	 System.out.println(overResult + " 시간 초과");
	         } else {
	        	 System.out.println("정상 근무");
	         }
	         
	         
	         
	         String timeStr = hour + ":" + minute + ":" + second;
	         System.out.println(timeStr);
	         	
	         
	         
	         //근무시간 
	         int workH = lhour - hour;         
	         int workM = lminute - minute;
	         int workS = lsecond - second;
	         
	         String workStr = workH + ":" + workM + ":" + workS;
	         System.out.println("근무시간 : " + workStr);
	         
	         //지각 횟수 
	         int lateCount = 0;
	         
	         if(10 <= hour) {
	        	 if(hour > 10) {
	        		 System.out.println("지각");	        		 
	        	 } else if(hour == 10 && minute > 0) {
	        		 System.out.println("지각");	        		 
	        	 } else if(minute == 0 && second > 0) {
	        		 System.out.println("지각");	        		 
	        	 } else {
	        		 System.out.println("정상");
	        	 }
	         } else if(hour < 10) {
	        	 System.out.println("정상");
	         }
	         
	         
	         WorkDTO workInfo = new WorkDTO();
	         workInfo.setExtraWork(timeStr);
	         workInfo.setMemNo(userno);
	         workInfo.setTotalWork(workStr);
	         workInfo.setLateCount(lateCount);
	         System.out.println(workInfo);
	         model.addAttribute("workInfo", workInfo);
	         
	        if(workService.insertWorkInfo(workInfo)) {
	        	
	        }
	         
	         System.out.println("workInfo : " + workInfo);
	         
			return "workhour/workList";

	}
	
}
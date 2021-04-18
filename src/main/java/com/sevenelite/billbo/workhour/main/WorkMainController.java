package com.sevenelite.billbo.workhour.main;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;
import com.sevenelite.billbo.workhour.work.model.service.WorkService;
import com.sevenelite.billbo.workhour.work.model.service.WorkStatusService;

@Controller
@RequestMapping("/") public class WorkMainController {

	private static final String ModelAndView = null;
	private final WorkService workService;
	private WorkStatusService workStatusService;
	
	

	@Autowired WorkMainController(WorkService workService, WorkStatusService workStatusService) {
		this.workService = workService;
		this.workStatusService = workStatusService;
	

	}

	@GetMapping("work")
	public String workController(Model model,Principal principal,Authentication authentication, HttpServletRequest request, ModelAndView mv) {
		
		
		//출근 현황 보기

			List<StatusAndWorkDTO> statusList = workStatusService.selectAllStatus();
			
			for(StatusAndWorkDTO testList : statusList) {
				System.out.println(statusList);
			}
			
			model.addAttribute("statusList", statusList);
			principal.getName();
			System.out.println("관리자 : " + principal);
			System.out.println("==================================="); 
																													
																																

			
		/*
		 * Calendar workHour = new GregorianCalendar();
		 * 
		 * int workHours = workHour.get(Calendar.HOUR_OF_DAY); int workMinutes =
		 * workHour.get(Calendar.MINUTE); int workSeconds =
		 * workHour.get(Calendar.SECOND);
		 * 
		 * Calendar leaveWork = new GregorianCalendar();
		 * 
		 * int leaveHours = leaveWork.get(Calendar.HOUR_OF_DAY); int leaveMinutes =
		 * leaveWork.get(Calendar.MINUTE); int leaveSeconds =
		 * leaveWork.get(Calendar.SECOND);
		 * 
		 * int workTimeHour = leaveHours - workHours; int workTimeMinute = leaveMinutes
		 * - workMinutes; int workTimeSecond = leaveSeconds - workSeconds;
		 */
			
//			System.out.println("근무시간 : " + workTimeHour + workTimeMinute + workTimeSecond);
			
			UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
			int userno = userDetails.getMemberno();
			List<StatusAndWorkDTO> com = workService.selectCommute();
			List<StatusAndWorkDTO> leave = workService.selectLeave();
			System.out.println("관리자 : " + principal);
			
			
			Date commute = new Date();
			Date lwork = new Date();
			
			
			System.out.println(com);
			System.out.println(leave);
			///////////////////////////////////////////////////
			SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
			String commuteTime = format.format(commute);
			String leaveTime = format.format(lwork);
			////////////////////////////////////////////////////
			
			System.out.println("퇴근시간 : " +leaveTime);
			System.out.println("출근시간 : " + commuteTime );
			////////////////////////////////////////////////////
			
			
			//출근시간 스플릿
	         String commuteTimeFormat = format.format(commute);
	         String[] splitCommute = commuteTimeFormat.split(":");
	         int hour = Integer.parseInt(splitCommute[0]);
	         int minute = Integer.parseInt(splitCommute[1]);
	         int second = Integer.parseInt(splitCommute[2]);

	         //퇴근시간
	         String leaveTimeFormat = format.format(lwork);
	         String[] splitLeave = leaveTimeFormat.split(":");
	         int lhour = Integer.parseInt(splitLeave[0]);
	         int lminute = Integer.parseInt(splitLeave[1]);
	         int lsecond = Integer.parseInt(splitLeave[2]);
	         
	         Date curTime = new Date(System.currentTimeMillis());
	         
	         if(hour > 8) {
	        	 int overH = hour;
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
	         int tenHour = 10;
	         int workCount = 22;
	         
	         if(tenHour <= hour) {
	        	 if(hour > 10) {
	        		 lateCount++;
	        		 System.out.println("지각");	        		 
	        	 } else if(hour == 10 && minute > 0) {
	        		 System.out.println("지각");
	        		 lateCount++;
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
	         workInfo.setWorkCount(workCount);
	         System.out.println(workInfo);
	         model.addAttribute("workInfo", workInfo);
	         
	        if(workService.insertWorkInfo(workInfo)) {
	        	
	        	
	        }
	        
	        return "workhour/workList";

		} 
	 } 
	
	     	
	

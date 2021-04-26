package com.sevenelite.billbo.workhour.main;
import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dto.RecordWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;
import com.sevenelite.billbo.workhour.work.model.service.WorkRecordService;
import com.sevenelite.billbo.workhour.work.model.service.WorkService;
import com.sevenelite.billbo.workhour.work.model.service.WorkStatusService;
@RequestMapping("/")
@Controller
public class WorkMainController {

	private final WorkService workService;
	private final WorkStatusService workStatusService;
	private final WorkRecordService  recordService;
	

	@Autowired WorkMainController(WorkService workService, WorkStatusService workStatusService, WorkRecordService recordService) {
		this.workService = workService;
		this.workStatusService = workStatusService;
		this.recordService = recordService;
	
	}
	@GetMapping("work")
	public String workController(Model model,Principal principal,Authentication authentication) throws ParseException {
		
		//출근 기록 확인
		
			List<RecordWorkDTO> recordList = recordService.selectRecord();
		
				for(RecordWorkDTO record : recordList) {
					model.addAttribute("recordList", recordList);	
		
		//출근 현황 보기

			List<StatusAndWorkDTO> statusList = workStatusService.selectAllStatus();
			
			for(StatusAndWorkDTO testList : statusList) {
				System.out.println(statusList);
			}
			
			model.addAttribute("statusList", statusList);
			principal.getName();
			System.out.println("관리자 : " + principal);
			System.out.println("==================================="); 
			
			
			UserDetailsVO userDetails = (UserDetailsVO) authentication.getPrincipal();
			int userno = userDetails.getMemberno();
			String workDate = workService.selectWork(userno);
			StatusAndWorkDTO status = new StatusAndWorkDTO();
			status.setDate(workDate);
			status.setMemNo(userno);
			String com = workService.selectCommute(status);
			String leave = workService.selectLeave(status);
			
			Date commute = new Date(System.currentTimeMillis());
			Date lwork = new Date(System.currentTimeMillis());
			
			
			System.out.println("시스템시간 "+System.currentTimeMillis());
			
			///////////////////////////////////////////////////
			SimpleDateFormat Dateformat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
				    Date CommuteTime = Dateformat.parse(com);
				    Date LeaveTime = Dateformat.parse(leave);
				    
				    SimpleDateFormat TimeFormat = new SimpleDateFormat("hh:mm:ss");
				    
				 String commuteTime = TimeFormat.format(commute); 
				 String leaveTime = TimeFormat.format(lwork);
			
			//출근시간 스플릿
	         String commuteTimeFormat = TimeFormat.format(CommuteTime);
	         String[] splitCommute = commuteTimeFormat.split(":");
	         int hour = Integer.parseInt(splitCommute[0]);
	         int minute = Integer.parseInt(splitCommute[1]);
	         int second = Integer.parseInt(splitCommute[2]);
	         System.out.println("출근시간 !!!!!!!!!!!"+commuteTimeFormat);
	         
	         //퇴근시간
	         String leaveTimeFormat = TimeFormat.format(LeaveTime);
	         String[] splitLeave = leaveTimeFormat.split(":");
	         int lhour = Integer.parseInt(splitLeave[0]);
	         int lminute = Integer.parseInt(splitLeave[1]);
	         int lsecond = Integer.parseInt(splitLeave[2]);
	         
	         System.out.println("퇴근시간 !!!!!!!!!!!!!: " + leaveTimeFormat);
	         
	         
	         
	         String timeStr = hour + ":" + minute + ":" + second;
	         System.out.println(" 초과 근무 시간 : " + timeStr);
	         	      
	         //근무시간 
	         int workH = lhour - hour;         
	         int workM = lminute - minute;
	         int workS = lsecond - second;
	         
	         int overH = workH - 8;
	         int overM = workH - 0;
	         int overS = second - 0;
	         
	         String overStr = overH + ":" + overM + ":" + overS;
	         String workStr = workH + ":" + workM + ":" + workS;        
	         System.out.println("근무시간 : " + workStr);
	         
	         //지각 횟수 
	         int lateCount = 0;
	         int tenHour = 10;
	         int workCount = workService.updateWorkCount();
	         
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
	         
	         String typeB1 = workService.workTypeB1();
	         System.out.println("B1 :" + typeB1);
	         
	         WorkDTO workInfo = new WorkDTO();
	         workInfo.setExtraWork(overStr);
	         workInfo.setMemNo(userno);
	         workInfo.setTotalWork(workStr);
	         workInfo.setLateCount(lateCount);
	         workInfo.setWorkCount(workCount);
	         workInfo.setWorkTypeCode(typeB1); {
	         
	         model.addAttribute("workInfo", workInfo);
	        if(workService.insertWorkInfo(workInfo)) {
	       
	          }
	       }
	        
	    }        	
				return "workhour/workList";
	}
		
	@PostMapping("/work/edit") 
		public ModelAndView editWork(HttpServletRequest request, StatusAndWorkDTO status, RedirectAttributes rttr, Model model) {		 	
		if(workService.editWork(status)) {
			rttr.addFlashAttribute("message", "수정에 성공했습니다");
		
		};
		ModelAndView mv = new ModelAndView();
		List<StatusAndWorkDTO> statusList = workService.selectStatusList();
		model.addAttribute("statusList", statusList);
		mv.setViewName("redirect:editForm");
		return mv;
			
		}
}
	
	     	
	

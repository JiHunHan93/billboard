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
			
			Date commute = workService.selectCommute(no);
			Date lwork = workService.selectlwork(no);
			
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
			 		
			
			
			return "workhour/workList";

	}


}
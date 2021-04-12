package com.sevenelite.billbo.workhour.main;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.workhour.work.model.dto.RecordWorkDTO;
import com.sevenelite.billbo.workhour.work.model.service.WorkRecordService;

@Controller
@RequestMapping("/")
public class WorkRecordController {
	
	@Autowired
	public WorkRecordController(WorkRecordService recordService) {
		this.recordService = recordService;
	}

	private final WorkRecordService recordService;
	
	public String RecordController(Model model, Principal principal) {
		
		List<RecordWorkDTO> recordList = recordService.selectRecord();
		for(RecordWorkDTO record : recordList) {
			
			System.out.println(record); 
		}
		model.addAttribute("record", recordList);
		
		
		return "redirect:/";
		
	}
}

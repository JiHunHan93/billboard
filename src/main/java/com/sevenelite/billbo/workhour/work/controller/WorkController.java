package com.sevenelite.billbo.workhour.work.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;
import com.sevenelite.billbo.workhour.work.model.service.WorkService;

@Controller
public class WorkController {
	
	private WorkService workService;
	
	@Autowired
	public WorkController(WorkService service) {
		this.workService = service;
	}
	
	@GetMapping("work/list")
	public List<WorkDTO> selectWorkList(Model model, HttpServletRequest request) {
		
		int totalWork = Integer.parseInt(request.getParameter("totalWork")); 	
		
	List<WorkDTO> workList = workService.selectWorkList(); {
		for(WorkDTO work : workList) {
			}
		}
		return workList;
	}
}
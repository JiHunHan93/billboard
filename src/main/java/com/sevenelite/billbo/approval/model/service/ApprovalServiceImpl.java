package com.sevenelite.billbo.approval.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.approval.model.dao.ApprovalMapper;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;

@Service
public class ApprovalServiceImpl implements ApprovalService {
	
	private ApprovalMapper mapper;
	
	@Autowired
	public ApprovalServiceImpl(ApprovalMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public int insertVacation(FormVacationDTO vacation) {
		
		return mapper.insertVacation(vacation);
	}

}

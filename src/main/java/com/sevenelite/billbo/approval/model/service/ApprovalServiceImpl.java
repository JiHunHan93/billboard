package com.sevenelite.billbo.approval.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.approval.model.dao.ApprovalMapper;
import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;

@Service
public class ApprovalServiceImpl implements ApprovalService {
	
	private ApprovalMapper mapper;
	
	@Autowired
	public ApprovalServiceImpl(ApprovalMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public ApproDeptDTO selectLoginDept(int memberno) {
		
		return mapper.selectLoginDept(memberno);
	}
	
	@Override
	public ApproSpotDTO selectLoginSpot(int memberno) {
		
		return mapper.selectLoginSpot(memberno);
	}
	
	@Override
	public int insertVacation(FormVacationDTO vacation) {
		
		return mapper.insertVacation(vacation);
	}

}

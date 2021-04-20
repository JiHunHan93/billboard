package com.sevenelite.billbo.workhour.work.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.workhour.work.model.dao.WorkDeptDAO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDeptAndMemberDTO;

@Service
public class WorkDeptServiceImpl implements WorkDeptService {
	
	@Autowired
	private WorkDeptDAO dao;
	
	public WorkDeptServiceImpl(WorkDeptDAO deptDAO) {
		this.dao = deptDAO;
		
	}

	@Override
	public List<WorkDeptAndMemberDTO> selectList() {
		return dao.selectList();
	}
}
	

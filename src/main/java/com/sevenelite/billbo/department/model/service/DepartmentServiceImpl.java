package com.sevenelite.billbo.department.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.department.model.dao.DepartmentMapper;
import com.sevenelite.billbo.department.model.dto.DepartmentDTO;
import com.sevenelite.billbo.department.model.dto.DepartmentSpotDTO;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	
	private DepartmentMapper mapper;
	
	@Autowired
	public DepartmentServiceImpl(DepartmentMapper mapper) {
		this.mapper = mapper;
	}
	/* 부서 조회 */
	@Override
	public DepartmentDTO selectLoginDept(int memberno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DepartmentSpotDTO selectLoginSpot(int memberno) {
		// TODO Auto-generated method stub
		return null;
	}
	
}

package com.sevenelite.billbo.department.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.department.model.dao.DepartmentMapper;
import com.sevenelite.billbo.department.model.dto.DepartmentDTO;
import com.sevenelite.billbo.department.model.dto.DepartmentSpotDTO;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	
	private DepartmentMapper departmentMapper;
	
	@Autowired
	public DepartmentServiceImpl(DepartmentMapper departmentMapper) {
		this.departmentMapper = departmentMapper;
	}
	
	/* 부서 조회 */
	
	@Override
	public List<DepartmentDTO> selectBusinessDepartmentList() {
	
		return departmentMapper.selectBusinessDepartmentList();
	}
	@Override
	public List<DepartmentDTO> selectManagementDepartmentList() {
		
		return departmentMapper.selectManagementDepartmentList();
	}
	@Override
	public List<DepartmentDTO> selectProductionDepartmentList() {
		
		return departmentMapper.selectProductionDepartmentList();
	}
	
	@Override
	public List<DepartmentDTO> selectEducationDepartmentList() {
		// TODO Auto-generated method stub
		return departmentMapper.selectEducationDepartmentList();
	}

	@Override
	public List<DepartmentDTO> selectEmployeeDepartmentList() {
		// TODO Auto-generated method stub
		return departmentMapper.selectEmployeeDepartmentList();
	}

	@Override
	public DepartmentSpotDTO selectDeptInpoSpot(int memberName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DepartmentDTO> memberDetailProfile(int no) {
		// TODO Auto-generated method stub
		return departmentMapper.detailEmployeeProfile(no);
	}

	
	
	
}

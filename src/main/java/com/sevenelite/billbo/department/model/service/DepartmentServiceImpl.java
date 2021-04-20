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
	public DepartmentSpotDTO selectDeptInpoSpot(int memberName) {
		return null;
	}
	
//	/* 직원 정보 조회 */
//	@Override
//	public DepartmentSpotDTO selectDeptInpoSpot(int memberName) {
//
//		return null;
//	}
//
//	@Override
//	public DepartmentDTO selectDeptInfo(int deptCode) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
	
}

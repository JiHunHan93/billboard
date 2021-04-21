package com.sevenelite.billbo.department.model.dao;

import java.util.List;
import com.sevenelite.billbo.department.model.dto.DepartmentDTO;
import com.sevenelite.billbo.department.model.dto.DepartmentSpotDTO;

public interface DepartmentMapper {
	

	List<DepartmentDTO> selectBusinessDepartmentList();
	
	List<DepartmentDTO> selectManagementDepartmentList();
	
	List<DepartmentDTO> selectProductionDepartmentList();

	List<DepartmentDTO> detailEmployeeProfile(int no);
	
}

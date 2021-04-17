package com.sevenelite.billbo.department.model.dao;

import com.sevenelite.billbo.department.model.dto.DepartmentDTO;
import com.sevenelite.billbo.department.model.dto.DepartmentSpotDTO;

public interface DepartmentMapper {
	
	/* 부서 조회 */
	DepartmentDTO selectLoginDept(int memberno);
	
	/* 직위 조회 */
	DepartmentSpotDTO selectLoginSpot(int memberno);

	
	
}
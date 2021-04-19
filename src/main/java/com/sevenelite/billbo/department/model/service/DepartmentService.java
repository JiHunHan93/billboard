package com.sevenelite.billbo.department.model.service;

import com.sevenelite.billbo.department.model.dto.DepartmentDTO;
import com.sevenelite.billbo.department.model.dto.DepartmentSpotDTO;

public interface DepartmentService {

	/* 부서 조회 */
	DepartmentDTO selectDeptInfo(int deptCode);
	
	/* 직위 조회 */
	DepartmentSpotDTO selectDeptInpoSpot(int memberName);
	
	
	
}

package com.sevenelite.billbo.department.model.service;

import java.util.List;

import com.sevenelite.billbo.department.model.dto.DepartmentDTO;
import com.sevenelite.billbo.department.model.dto.DepartmentSpotDTO;

public interface DepartmentService {

	
	/* 직위 조회 */
	DepartmentSpotDTO selectDeptInpoSpot(int memberName);
	
	/* 영업부서 조회 */
	List<DepartmentDTO> selectBusinessDepartmentList();

	/* 관리부서 조회 */
	List<DepartmentDTO> selectManagementDepartmentList();
	
	/* 생산부서 조회 */
	List<DepartmentDTO> selectProductionDepartmentList();

	List<DepartmentDTO> memberDetailProfile(int no);

	


	
	
	
	
}

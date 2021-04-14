package com.sevenelite.billbo.approval.model.dao;

import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;

public interface ApprovalMapper {
	
	/* 부서 조회 */
	ApproDeptDTO selectLoginDept(int memberno);
	
	/* 직위 조회 */
	ApproSpotDTO selectLoginSpot(int memberno);

	/* 연차 신청서(1004) 입력 */
	int insertVacation(FormVacationDTO vacation);
	
}

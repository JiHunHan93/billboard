package com.sevenelite.billbo.approval.model.service;

import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ApproLineMemDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;

public interface ApprovalService {

	/* 부서 조회 */
	ApproDeptDTO selectLoginDept(int memberno);
	
	/* 직위 조회 */
	ApproSpotDTO selectLoginSpot(int memberno);
	
	/* 연차 신청서(1004) 입력 */
	int insertVacation(FormVacationDTO vacation);
	
	/* 기안문서 입력 */
	int insertDrafting(ApproDraftingDTO approDraftingDTO, ApproLineMemDTO approLineMemDTO);
	
}

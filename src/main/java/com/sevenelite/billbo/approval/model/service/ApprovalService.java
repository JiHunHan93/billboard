package com.sevenelite.billbo.approval.model.service;

import java.util.List;

import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ApproLineMemDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;
import com.sevenelite.billbo.approval.model.dto.ListDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ListWaitingApprovalDTO;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;

public interface ApprovalService {

	/* 부서 조회 */
	ApproDeptDTO selectLoginDept(int memberno);
	
	/* 직위 조회 */
	ApproSpotDTO selectLoginSpot(int memberno);
	
	/* 연차 신청서(1004) 입력 */
	int insertVacation(FormVacationDTO vacation);
	
	/* 기안문서 입력 */
	int insertDrafting(ApproDraftingDTO approDraftingDTO, List<ApproLineMemDTO> lineMem);
	
	/* 모든 사원 조회 */
	List<MemBbDTO> selectMemList();
	
	/* 모든 사원의 부서 조회 */
	List<ApproDeptDTO> selectLoginDeptList(List<MemBbDTO> memList);

	/* 모든 사원의 직위 조회 */
	List<ApproSpotDTO> selectLoginSpotList(List<MemBbDTO> memList);

	/* 기안 문서 조회 */
	List<ListDraftingDTO> selectAllDraftingList(int memberno);

	/* 결재 대기 중인 문서(로그인한 사원에 대한) */
	List<ListWaitingApprovalDTO> selectWaitingApproval(ListWaitingApprovalDTO listWaitingApprovalDTO);

	
}

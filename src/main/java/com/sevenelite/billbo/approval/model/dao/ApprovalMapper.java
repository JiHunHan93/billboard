package com.sevenelite.billbo.approval.model.dao;

import java.util.List;

import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ApproLineMemDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.CheckApproveDTO;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;
import com.sevenelite.billbo.approval.model.dto.ListDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ListWaitingApprovalDTO;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;

public interface ApprovalMapper {
	
	/* 부서 조회 */
	ApproDeptDTO selectLoginDept(int memberno);
	
	/* 직위 조회 */
	ApproSpotDTO selectLoginSpot(int memberno);

	/* 연차 신청서(1004) 입력 */
	int insertVacation(FormVacationDTO vacation);
	
	/* 기안문서 입력 */
	int insertDrafting(ApproDraftingDTO approDraftingDTO);
	
	/* 결재선사원 입력 */
	int insertLineMem(ApproLineMemDTO approLineMemDTO);

	/* 모든 사원 조회 */
	List<MemBbDTO> selectMemList();

	/* 모든 사원의 부서 조회 */
	ApproDeptDTO selectLoginDeptList(MemBbDTO memBbDTO);

	/* 모든 사원의 직위 조회 */
	ApproSpotDTO selectLoginSpotList(MemBbDTO memBbDTO);

	int selectCheckCurrvalDraft();
	
	void insertCheckApprove(CheckApproveDTO currval);

	/* 기안문서 조회 */
	List<ListDraftingDTO> selectAllDraftingList(int memberno);
	
	/* 결재 대기 중인 문서(로그인한 사원에 대한) */
	List<ListWaitingApprovalDTO> selectWaitingApproval(ListWaitingApprovalDTO listWaitingApprovalDTO);
	
	FormVacationDTO selectDraftVacation(int memberNo);

	/* 기안서 결재  */
	int updateDrafting(ApproDraftingDTO approDraftingDTO);

	/* 결재선 업뎃 */
	int updateLineMem(ApproLineMemDTO approLineMemDTO);
	
	/* 승인여부 업뎃 */
	int updateCheckApp(CheckApproveDTO checkApproveDTO);






	
}

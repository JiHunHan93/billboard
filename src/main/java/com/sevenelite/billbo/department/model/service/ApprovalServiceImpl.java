//package com.sevenelite.billbo.approval.model.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.sevenelite.billbo.approval.model.dao.ApprovalMapper;
//import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
//import com.sevenelite.billbo.approval.model.dto.ApproDraftingDTO;
//import com.sevenelite.billbo.approval.model.dto.ApproLineMemDTO;
//import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
//import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;
//
//@Service
//public class ApprovalServiceImpl implements ApprovalService {
//	
//	private ApprovalMapper mapper;
//	
//	@Autowired
//	public ApprovalServiceImpl(ApprovalMapper mapper) {
//		this.mapper = mapper;
//	}
//	
//	/* 부서 조회 */
//	@Override
//	public ApproDeptDTO selectLoginDept(int memberno) {
//		
//		return mapper.selectLoginDept(memberno);
//	}
//	
//	/* 직위 조회 */
//	@Override
//	public ApproSpotDTO selectLoginSpot(int memberno) {
//		
//		return mapper.selectLoginSpot(memberno);
//	}
//	
//	/* 연차 신청서(1004) 입력 */
//	@Override
//	public int insertVacation(FormVacationDTO vacation) {
//		
//		return mapper.insertVacation(vacation);
//	}
//	
//	/* 기안문서 입력 : 하위(결재선사원, 승인여부, 참조/열람, 부재/위임)*/
//	@Override
//	public int insertDrafting(ApproDraftingDTO approDraftingDTO, ApproLineMemDTO approLineMemDTO) {
//		
//		/* 1. 기안문서 */
//		int result1 = mapper.insertDrafting(approDraftingDTO);
//		
//		/* 2. 결재선사원 */
//		int result2 = mapper.insertLineMem(approLineMemDTO);
//		
//		return result1 + result2;
//	}
//
//}

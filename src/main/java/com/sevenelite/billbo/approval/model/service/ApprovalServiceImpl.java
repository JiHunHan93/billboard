package com.sevenelite.billbo.approval.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.approval.model.dao.ApprovalMapper;
import com.sevenelite.billbo.approval.model.dto.ApproDeptDTO;
import com.sevenelite.billbo.approval.model.dto.ApproDraftingDTO;
import com.sevenelite.billbo.approval.model.dto.ApproLineMemDTO;
import com.sevenelite.billbo.approval.model.dto.ApproSpotDTO;
import com.sevenelite.billbo.approval.model.dto.CheckApproveDTO;
import com.sevenelite.billbo.approval.model.dto.FormVacationDTO;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;

@Service
public class ApprovalServiceImpl implements ApprovalService {
	
	private ApprovalMapper mapper;
	
	@Autowired
	public ApprovalServiceImpl(ApprovalMapper mapper) {
		this.mapper = mapper;
	}
	
	/* 부서 조회 */
	@Override
	public ApproDeptDTO selectLoginDept(int memberno) {
		
		return mapper.selectLoginDept(memberno);
	}
	
	/* 직위 조회 */
	@Override
	public ApproSpotDTO selectLoginSpot(int memberno) {
		
		return mapper.selectLoginSpot(memberno);
	}
	
	/* 연차 신청서(1004) 입력 */
	@Override
	public int insertVacation(FormVacationDTO vacation) {
		
		return mapper.insertVacation(vacation);
	}
	
	/* 기안문서 입력 : 하위(결재선사원, 승인여부, 참조/열람, 부재/위임)*/
	@Override
	public int insertDrafting(ApproDraftingDTO approDraftingDTO, List<ApproLineMemDTO> lineMem) {
		
		/* 1. 기안문서 */
		int result1 = mapper.insertDrafting(approDraftingDTO);
		
		/* 2. 결재선사원 */
		/* 04/25(일) 리스트에서 뽑아서 하나씩 Insert */
		int result2 = 0;
		for(int i = 0; i < lineMem.size(); i++) {
			System.out.println("가져온 값 :" + i+ "번째 값은? : " + lineMem.get(i));
			int result3 = mapper.insertLineMem(lineMem.get(i));
			mapper.insertCheckApprove();
			result2 = result2 + result3;
		}
		System.out.println("가져온 List 사이즈? : " + lineMem.size());
		System.out.println("최종 Insert 결과 : " + result2);
		
		return result1 + result2;
	}
	
	/* 모든 사원 조회 */
	@Override
	public List<MemBbDTO> selectMemList() {
		
		return mapper.selectMemList();
	}
	
	/* 모든 사원의 부서 조회 */
	@Override
	public List<ApproDeptDTO> selectLoginDeptList(List<MemBbDTO> memList) {
		
		List<ApproDeptDTO> approDeptList = new ArrayList<>();
		for(int i = 0; i < memList.size(); i++) {
			approDeptList.add(mapper.selectLoginDeptList(memList.get(i)));
		}
		
		return approDeptList;
	}

	/* 모든 사원의 직위 조회 */
	@Override
	public List<ApproSpotDTO> selectLoginSpotList(List<MemBbDTO> memList) {
		
		List<ApproSpotDTO> approSpotList = new ArrayList<>();
		for(int i = 0; i < memList.size(); i++) {
			approSpotList.add(mapper.selectLoginSpotList(memList.get(i)));
		}
		
		return approSpotList;
	}

}

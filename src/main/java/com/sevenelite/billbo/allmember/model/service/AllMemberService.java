package com.sevenelite.billbo.allmember.model.service;

import java.util.List;

import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;

public interface AllMemberService {

	List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> selectAllEmployeeList();
	
	

}

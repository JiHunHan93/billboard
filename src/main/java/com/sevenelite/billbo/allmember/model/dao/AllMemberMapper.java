package com.sevenelite.billbo.allmember.model.dao;

import java.util.List;

import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;

public interface AllMemberMapper {

	List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> selectAllEmployeeList();

}

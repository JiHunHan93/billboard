package com.sevenelite.billbo.allmember.model.dao;

import java.util.List;

import com.sevenelite.billbo.allmember.model.dto.MemberAndArmyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;

public interface AllMemberMapper {

	List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> selectAllEmployeeList();

	List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> detailEmployeeList(int no);

	List<MemberInfoDTO> selectBankInfo(int no);

	List<MemberAndArmyDTO> selectArmyInfo(int no);

}

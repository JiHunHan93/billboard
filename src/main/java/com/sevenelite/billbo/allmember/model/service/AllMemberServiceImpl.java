package com.sevenelite.billbo.allmember.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.allmember.model.dao.AllMemberMapper;
import com.sevenelite.billbo.allmember.model.dto.MemberAndArmyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;

@Service("allMemberService")
public class AllMemberServiceImpl implements AllMemberService {
	
	private AllMemberMapper allMemberMapper;
	@Autowired
	public AllMemberServiceImpl(AllMemberMapper allMemberMapper) {
		this.allMemberMapper = allMemberMapper;
	}

	@Override
	public List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> selectAllEmployeeList() {
		// TODO Auto-generated method stub
		return allMemberMapper.selectAllEmployeeList();
	}

	@Override
	public List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> memberDetail(int no) {
		// TODO Auto-generated method stub
		return allMemberMapper.detailEmployeeList(no);
	}

	@Override
	public List<MemberInfoDTO> selectBankInfo(int no) {
		// TODO Auto-generated method stub
		return allMemberMapper.selectBankInfo(no);
	}

	@Override
	public List<MemberAndArmyDTO> selectArmyInfo(int no) {
		// TODO Auto-generated method stub
		return allMemberMapper.selectArmyInfo(no);
	}

}

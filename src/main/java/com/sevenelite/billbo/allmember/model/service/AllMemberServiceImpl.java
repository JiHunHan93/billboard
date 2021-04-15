package com.sevenelite.billbo.allmember.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.allmember.model.dao.AllMemberMapper;
import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;

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

}

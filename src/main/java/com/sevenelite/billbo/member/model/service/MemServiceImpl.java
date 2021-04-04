package com.sevenelite.billbo.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.member.model.dao.MemberMapper;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.member.model.dto.RoleDTO;

@Service
public class MemServiceImpl implements MemService {

	private MemberMapper mapper;

	@Autowired
	public MemServiceImpl(MemberMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<MemDTO> selectMemList() {
		
		return mapper.selectMemberInfo();
	}

	@Override
	public MemBbDTO loginBbMem(MemBbDTO mem) {

		return mapper.loginBbMem(mem);
	}

	@Override
	public String registCheckEmail(String email) {
		
		String checkEmail = mapper.registCheckEmail(email);
		
		System.out.println(checkEmail);
		
		String result = "";
		if(checkEmail == null) {
			result = "false";
		} 
		
		return result;
	}

	@Override
	public boolean registNewMem(MemBbDTO mem) {
		
		int result1 = mapper.registNewMem(mem);
		
		/* 04/05(월) 자식 테이블(ROLE) Insert 실패시 부모 Rollback되게 수정하기 */
		int result2 = mapper.insertNewMemRole(new RoleDTO("ROLE_GUEST"));
			
		return result1 + result2 > 1? true : false;
	}
	
	
	
}

package com.sevenelite.billbo.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.member.model.dao.MemberMapper;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;

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
	
	
	
}

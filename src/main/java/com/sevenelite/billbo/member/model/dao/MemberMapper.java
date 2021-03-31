package com.sevenelite.billbo.member.model.dao;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;

public interface MemberMapper {

	List<MemDTO> selectMemberInfo();

	MemBbDTO loginBbMem(MemBbDTO mem);

	MemBbDTO loginBbMem(String username);

	List<String> selectUserAuthone(String username);

}

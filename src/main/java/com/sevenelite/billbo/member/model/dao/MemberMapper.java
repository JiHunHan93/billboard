package com.sevenelite.billbo.member.model.dao;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.member.model.dto.RoleDTO;

public interface MemberMapper {

	List<MemDTO> selectMemberInfo();

	MemBbDTO loginBbMem(MemBbDTO mem);

	MemBbDTO loginBbMem(String username);

	List<String> selectUserAuthone(String username);

	String registCheckEmail(String email);

	int registNewMem(MemBbDTO mem);

	int insertNewMemRole(RoleDTO roleDTO);
	


}

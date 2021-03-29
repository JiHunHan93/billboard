package com.sevenelite.billbo.member.model.dao;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemDTO;

public interface MemberMapper {

	List<MemDTO> selectMemberInfo();

}

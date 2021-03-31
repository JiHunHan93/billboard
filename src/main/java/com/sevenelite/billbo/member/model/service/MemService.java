package com.sevenelite.billbo.member.model.service;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;

public interface MemService {

	List<MemDTO> selectMemList();

	MemBbDTO loginBbMem(MemBbDTO mem);
	
}

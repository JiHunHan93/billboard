package com.sevenelite.billbo.workhour.work.model.service;

import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.WorkDeptAndMemberDTO;

public interface WorkDeptService {


	List<WorkDeptAndMemberDTO> selectList();

	
}

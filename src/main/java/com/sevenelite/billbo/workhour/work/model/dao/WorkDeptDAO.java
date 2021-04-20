package com.sevenelite.billbo.workhour.work.model.dao;

import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.WorkDeptAndMemberDTO;

public interface WorkDeptDAO {

	List<WorkDeptAndMemberDTO> selectList();

}

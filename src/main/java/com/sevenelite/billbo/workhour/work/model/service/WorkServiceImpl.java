
package com.sevenelite.billbo.workhour.work.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; import
org.springframework.stereotype.Service;

import com.sevenelite.billbo.workhour.work.model.dao.WorkDAO; import
com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;

@Service public class WorkServiceImpl implements WorkService {

	private WorkDAO dao;

	@Autowired public WorkServiceImpl(WorkDAO workdao) { this.dao = workdao; }

	@Override public List<WorkDTO> selectWorkList() 
	
	{ 
		return dao.selectWorkList(); 
		} 
	}

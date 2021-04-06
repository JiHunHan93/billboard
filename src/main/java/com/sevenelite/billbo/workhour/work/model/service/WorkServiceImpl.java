package com.sevenelite.billbo.workhour.work.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sevenelite.billbo.workhour.work.model.dao.WorkDAO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;

@Service
public class WorkServiceImpl implements WorkService {
	
	private WorkDAO dao;

	@Override
	public List<WorkDTO> selectWorkList() {
		return dao.selectWorkList();
	}
}

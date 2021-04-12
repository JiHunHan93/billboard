package com.sevenelite.billbo.workhour.work.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.workhour.work.model.dao.WorkRecordDAO;
import com.sevenelite.billbo.workhour.work.model.dto.RecordWorkDTO;

@Service
public class WorkRecordServiceImpl implements WorkRecordService {
	
	private WorkRecordDAO dao;
	
	@Autowired
	
	public WorkRecordServiceImpl(WorkRecordDAO recordDAO) {
		this.dao = recordDAO;
	}

	@Override
	public List<RecordWorkDTO> selectRecord() {
		return dao.selectRecord();
	}
	
}	

package com.sevenelite.billbo.workhour.work.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; import
org.springframework.stereotype.Service;

import com.sevenelite.billbo.workhour.work.model.dao.StatusDAO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;

@Service
public class WorkStatusServiceImpl implements WorkStatusService{

	private StatusDAO dao;

	@Autowired 
	public WorkStatusServiceImpl(StatusDAO statusDAO) {
		this.dao = statusDAO; 
	}

	@Override
	public List<StatusAndWorkDTO> selectListstatus() {
		return dao.selectAllStatus();
	}

	@Override
	public boolean registWork(StatusAndWorkDTO status) {
		
		return dao.registWork(status) > 0? true: false;
	}

	@Override
	public boolean updateWork(StatusAndWorkDTO status ) {
		return dao.updateWork(status) > 0? true: false;
	}

	@Override
	public List<StatusAndWorkDTO> sequenceWork(int no) {
		return dao.detailWork(no);
	}


}





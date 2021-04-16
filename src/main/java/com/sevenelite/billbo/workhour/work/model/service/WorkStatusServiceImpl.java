
package com.sevenelite.billbo.workhour.work.model.service;

import java.util.Date;
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
	public List<StatusAndWorkDTO> sequenceWork(int no) {
		return dao.detailWork(no);
	}


	@Override
	public boolean registWork(StatusAndWorkDTO workList) {
		return dao.registWork(workList) > 0? true: false;
	}

	@Override
	public List<StatusAndWorkDTO> selectAllStatus() {
		return dao.selectAllStatus();
	}

	@Override
	public Date selectDate(int userno) {
		return dao.selectWorkDate(userno);
	}


	@Override
	public Date selectlwrok() {
		return dao.selectlwork();
	}


	@Override
	public boolean updateWork(StatusAndWorkDTO workList) {
		return dao.updateWork(workList) > 0? true: false;
	}



	}

	







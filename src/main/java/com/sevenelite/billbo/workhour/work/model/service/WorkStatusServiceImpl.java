
package com.sevenelite.billbo.workhour.work.model.service;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired; import
org.springframework.stereotype.Service;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
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
	public List<StatusAndWorkDTO> sequenceWork(int no) {
		return dao.detailWork(no);
	}


	@Override
	public boolean registWork(StatusAndWorkDTO workList) {
		return dao.registWork(workList) > 0? true: false;
	}

	@Override
	public boolean updateWork(int userno) {
		return dao.updateWork(userno);
	}

	}

	







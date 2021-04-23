
package com.sevenelite.billbo.workhour.work.model.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; import
org.springframework.stereotype.Service;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dao.WorkDAO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import
com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;

@Service public class WorkServiceImpl implements WorkService {

	private WorkDAO dao;

	@Autowired public WorkServiceImpl(WorkDAO workdao) 
	{ this.dao = workdao; 
}
	@Override
	public List<WorkDTO> selectWorkList(int no) {
		return dao.selectWorkList(no);
	}
	@Override
	public boolean insertWorkInfo(WorkDTO workInfo) {
		return dao.insertWorkInfo(workInfo);
	}
	@Override
	public String selectCommute(StatusAndWorkDTO status) {
		return dao.selectCommute(status);
	}
	@Override
	public String selectLeave(StatusAndWorkDTO status) {
		return dao.selectLeave(status);
	}
	@Override
	public String selectWork(int userno) {
		return dao.selectWork(userno);
	}
	@Override
	public int updateWorkCount() {
		return dao.updateWorkCount();
	}
	
}	
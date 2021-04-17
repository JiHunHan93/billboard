
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
	public java.sql.Date selectCommute() {
		return dao.selectCommute();
	}
	@Override
	public Date selectlWork() {
		return dao.selectlwork();
	}
}


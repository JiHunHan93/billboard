package com.sevenelite.billbo.calendar.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.calendar.model.dao.CalDAO;
import com.sevenelite.billbo.calendar.model.dto.CalDTO;

@Service("calService")
public class CalServiceImpl implements CalService {

	private CalDAO calDAO;

	@Autowired
	public CalServiceImpl(CalDAO calDAO) {
		this.calDAO = calDAO;
	}

	@Override
	public List<Map<String, CalDTO>> selectCal() {
		return calDAO.selectCal();
	}

	@Override
	public boolean insertEvt(CalDTO calDTO) {
		return calDAO.insertEvt(calDTO) > 0? true : false;
	}

	@Override
	public String seletDept(int userNo) {
		return calDAO.selectDept(userNo);
	}

	@Override
	public boolean updateEvt(CalDTO calDTO) {
		return calDAO.updateEvt(calDTO) > 0? true : false;
	}

	@Override
	public boolean deleteEvt(CalDTO calDTO) {
		return calDAO.deleteEvt(calDTO) > 0? true : false;
	}

	@Override
	public boolean insertDropEvt(CalDTO calDTO) {
		return calDAO.insertDropEvt(calDTO) > 0? true : false;
	}

	@Override
	public boolean draggEvt(CalDTO calDTO) {
		return calDAO.draggEvt(calDTO) > 0? true : false;
	}

	@Override
	public boolean dropEvt(CalDTO calDTO) {
		return calDAO.dropEvt(calDTO) > 0? true : false;
	}


}

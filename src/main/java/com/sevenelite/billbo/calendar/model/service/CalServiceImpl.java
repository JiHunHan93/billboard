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


}

package com.sevenelite.billbo.calender.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.calender.model.dao.CalDAO;

@Service("calService")
public class CalServiceImpl implements CalService {

	private CalDAO calDAO;

//	@Autowired
//	public CalServiceImpl(CalDAO calDAO) {
//		this.calDAO = calDAO;
//	}

}

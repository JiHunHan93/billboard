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
	// DB에 존재하는 모든 일정의 정보를 조회한다.
	@Override
	public List<Map<String, CalDTO>> selectCal() {
		return calDAO.selectCal();
	}
	// 일정을 insert한다.
	@Override
	public boolean insertEvt(CalDTO calDTO) {
		return calDAO.insertEvt(calDTO) > 0? true : false;
	}
	// 부서코드를 조회한다.
	@Override
	public String selectDept(int userNo) {
		return calDAO.selectDept(userNo);
	}
	// 일정을 update한다.
	@Override
	public boolean updateEvt(CalDTO calDTO) {
		return calDAO.updateEvt(calDTO) > 0? true : false;
	}
	// 일정의 상태를 update한다.
	@Override
	public boolean deleteEvt(CalDTO calDTO) {
		return calDAO.deleteEvt(calDTO) > 0? true : false;
	}
	// 숏컷 이벤트를 insert한다.
	@Override
	public boolean insertDropEvt(CalDTO calDTO) {
		return calDAO.insertDropEvt(calDTO) > 0? true : false;
	}
	// 리사이징 한 이벤트의 정보를 update한다.
	@Override
	public boolean draggEvt(CalDTO calDTO) {
		return calDAO.draggEvt(calDTO) > 0? true : false;
	}
	// 드래그앤 드롭한 이벤트의 정보를 update한다.
	@Override
	public boolean dropEvt(CalDTO calDTO) {
		return calDAO.dropEvt(calDTO) > 0? true : false;
	}


}

package com.sevenelite.billbo.calendar.model.dao;

import java.util.List;
import java.util.Map;

import com.sevenelite.billbo.calendar.model.dto.CalDTO;

public interface CalDAO {

	List<Map<String, CalDTO>> selectCal();

	int insertEvt(CalDTO calDTO);

	String selectDept(int userNo);

	int updateEvt(CalDTO calDTO);

	int deleteEvt(CalDTO calDTO);

	int insertDropEvt(CalDTO calDTO);

	int draggEvt(CalDTO calDTO);

	int dropEvt(CalDTO calDTO);
	
}

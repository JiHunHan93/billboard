package com.sevenelite.billbo.calendar.model.dao;

import java.util.List;
import java.util.Map;

import com.sevenelite.billbo.calendar.model.dto.CalDTO;

public interface CalDAO {

	List<Map<String, CalDTO>> selectCal();

	int insertEvt(CalDTO calDTO);
	
	
}

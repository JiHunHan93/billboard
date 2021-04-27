package com.sevenelite.billbo.calendar.model.service;

import java.util.List;
import java.util.Map;

import com.sevenelite.billbo.calendar.model.dto.CalDTO;

public interface CalService {

	List<Map<String, CalDTO>> selectCal();

	boolean insertEvt(CalDTO calDTO);

	String selectDept(int userNo);

	boolean updateEvt(CalDTO calDTO);

	boolean deleteEvt(CalDTO calDTO);

	boolean insertDropEvt(CalDTO calDTO);

	boolean draggEvt(CalDTO calDTO);

	boolean dropEvt(CalDTO calDTO);


}

package com.sevenelite.billbo.calendar.model.service;

import java.util.List;
import java.util.Map;

import com.sevenelite.billbo.calendar.model.dto.CalDTO;

public interface CalService {

	List<Map<String, CalDTO>> selectCal();				// DB에 존재하는 모든 일정의 정보를 조회한다.

	boolean insertEvt(CalDTO calDTO);					// 일정을 insert한다.

	String selectDept(int userNo);						// 부서코드를 조회한다.

	boolean updateEvt(CalDTO calDTO);					// 일정을 update한다.

	boolean deleteEvt(CalDTO calDTO);					// 일정의 상태를 update한다.

	boolean insertDropEvt(CalDTO calDTO);				// 숏컷 이벤트를 insert한다.

	boolean draggEvt(CalDTO calDTO);					// 리사이징 한 이벤트의 정보를 update한다.

	boolean dropEvt(CalDTO calDTO);						// 드래그앤 드롭한 이벤트의 정보를 update한다.

}

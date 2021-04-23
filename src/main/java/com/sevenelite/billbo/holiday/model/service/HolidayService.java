package com.sevenelite.billbo.holiday.model.service;

import java.util.List;

import com.sevenelite.billbo.holiday.model.dto.HolidayDTO;
import com.sevenelite.billbo.holiday.model.dto.MemberHolidayDTO;

public interface HolidayService {

	

	List<HolidayDTO> selectHolidayInfo(int memberno);

	/* List<MemberHolidayDTO> registHoliday(int memberno, int term); */

	boolean registHoliday(MemberHolidayDTO holiday);

	List<MemberHolidayDTO> selectHolidayList(int memberno);

}

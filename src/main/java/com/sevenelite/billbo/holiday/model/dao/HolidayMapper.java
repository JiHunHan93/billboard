package com.sevenelite.billbo.holiday.model.dao;

import java.util.List;

import com.sevenelite.billbo.holiday.model.dto.HolidayDTO;
import com.sevenelite.billbo.holiday.model.dto.MemberHolidayDTO;

public interface HolidayMapper {

	

	List<HolidayDTO> selectHolidayInfo(int memberno);

//	List<MemberHolidayDTO> registHoliday(int memberno, int term);

	boolean registHoliday(MemberHolidayDTO holiday);

	List<MemberHolidayDTO> selectHolidayList(int memberno);

	boolean modifyHoliday(MemberHolidayDTO holiday2);

	boolean deleteHoliday(int deleteNo);

}

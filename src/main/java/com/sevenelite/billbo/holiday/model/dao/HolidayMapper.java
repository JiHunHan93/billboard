package com.sevenelite.billbo.holiday.model.dao;

import java.util.List;

import com.sevenelite.billbo.holiday.model.dto.HolidayDTO;

public interface HolidayMapper {

	

	List<HolidayDTO> selectHolidayInfo(int memberno);

}

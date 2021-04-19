package com.sevenelite.billbo.holiday.model.service;

import java.util.List;

import com.sevenelite.billbo.holiday.model.dto.HolidayDTO;

public interface HolidayService {

	

	List<HolidayDTO> selectHolidayInfo(int memberno);

}

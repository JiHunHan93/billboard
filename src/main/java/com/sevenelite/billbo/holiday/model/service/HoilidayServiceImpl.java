package com.sevenelite.billbo.holiday.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.holiday.model.dao.HolidayMapper;
import com.sevenelite.billbo.holiday.model.dto.HolidayDTO;

@Service("holidayService")
public class HoilidayServiceImpl implements HolidayService{

	private final HolidayMapper holidayMapper;
	@Autowired
	public HoilidayServiceImpl(HolidayMapper holidayMapper) {
		this.holidayMapper = holidayMapper;
	}
	


	@Override
	public List<HolidayDTO> selectHolidayInfo(int memberno) {
		// 연차조회
				return holidayMapper.selectHolidayInfo(memberno);
	}

}

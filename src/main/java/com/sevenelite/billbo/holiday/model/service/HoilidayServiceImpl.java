package com.sevenelite.billbo.holiday.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.holiday.model.dao.HolidayMapper;
import com.sevenelite.billbo.holiday.model.dto.HolidayDTO;
import com.sevenelite.billbo.holiday.model.dto.MemberHolidayDTO;

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


	@Override
	public boolean registHoliday(MemberHolidayDTO holiday) {
		// TODO Auto-generated method stub
		return holidayMapper.registHoliday(holiday);
	}



	@Override
	public List<MemberHolidayDTO> selectHolidayList(int memberno) {
		// TODO Auto-generated method stub
		return holidayMapper.selectHolidayList(memberno);
	}

}

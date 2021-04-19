package com.sevenelite.billbo.performance.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.performance.model.dao.PerMapper;
import com.sevenelite.billbo.performance.model.dto.PerformanceListDTO;

@Service("perService")
public class PerformanceServiceImpl implements PerformanceService {
	
	private PerMapper perMapper;
	
	@Autowired
	public PerformanceServiceImpl(PerMapper perMapper) {
		this.perMapper = perMapper;
	}
	
	@Override
	public List<PerformanceListDTO> selectPer() {
		
		return perMapper.selectPerList();
	}

}

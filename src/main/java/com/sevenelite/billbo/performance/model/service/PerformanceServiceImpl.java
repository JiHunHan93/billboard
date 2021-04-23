package com.sevenelite.billbo.performance.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.performance.model.dao.PerMapper;
import com.sevenelite.billbo.performance.model.dto.PerformanceListDTO;
import com.sevenelite.billbo.performance.model.dto.ReviewListDTO;

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

	@Override
	public List<ReviewListDTO> reviewList(int no) {
		
		return perMapper.reviewList(no);
	}

	@Override
	public boolean insertReview(ReviewListDTO reviewDTO) {
		
		int result = perMapper.insertReview(reviewDTO);
		
		return result >= 1 ? true : false;
	}

	@Override
	public List<PerformanceListDTO> selectMyPer(int memNo) {
		
		return perMapper.selectMyPer(memNo);
	}

	@Override
	public List<ReviewListDTO> selectMyReview(int no) {
		
		return perMapper.selectMyReview(no);
	}

}

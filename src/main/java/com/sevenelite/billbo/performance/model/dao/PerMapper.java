package com.sevenelite.billbo.performance.model.dao;

import java.util.List;

import com.sevenelite.billbo.performance.model.dto.PerformanceListDTO;
import com.sevenelite.billbo.performance.model.dto.ReviewListDTO;


public interface PerMapper {

	List<PerformanceListDTO> selectPerList();

	List<ReviewListDTO> reviewList(int no);

	int insertReview(ReviewListDTO reviewDTO);

	List<PerformanceListDTO> selectMyPer(int memNo);

	List<ReviewListDTO> selectMyReview(int no);

}

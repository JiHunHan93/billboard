package com.sevenelite.billbo.performance.model.service;

import java.util.List;

import com.sevenelite.billbo.performance.model.dto.PerformanceListDTO;
import com.sevenelite.billbo.performance.model.dto.ReviewListDTO;

public interface PerformanceService {

	List<PerformanceListDTO> selectPer();

	List<ReviewListDTO> reviewList(int no);

}

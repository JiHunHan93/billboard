
  package com.sevenelite.billbo.workhour.work.model.dao;

import java.util.Date;
import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;

public interface WorkDAO {


	List<WorkDTO> selectWorkList(int no);

	Date selectWorkDate(int no);

	Date selectlwork(int no);

	Date selectCommute(int no);


  }
 
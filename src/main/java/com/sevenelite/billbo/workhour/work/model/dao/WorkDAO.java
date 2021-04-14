
  package com.sevenelite.billbo.workhour.work.model.dao;

import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;

public interface WorkDAO {

	List<WorkDTO> selectWorkList(int no);

  }
 
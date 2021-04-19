
  package com.sevenelite.billbo.workhour.work.model.dao;

import java.util.Date;
import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;

public interface WorkDAO {


	List<WorkDTO> selectWorkList(int no);

	boolean insertWorkInfo(WorkDTO workInfo);

	List<StatusAndWorkDTO> selectTime();

	String selectWork();

	Date selectCommute(int userno, String workDate);

	Date selectLeave(int userno, String workDate);


  }
 
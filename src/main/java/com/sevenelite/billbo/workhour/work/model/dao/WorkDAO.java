
  package com.sevenelite.billbo.workhour.work.model.dao;

import java.util.Date;
import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;

public interface WorkDAO {


	List<WorkDTO> selectWorkList(int no);

	boolean insertWorkInfo(WorkDTO workInfo);

	List<StatusAndWorkDTO> selectTime();

	String selectWork(int userno);

	Date selectLeave(int userno, String workDate);

	String selectCommute(StatusAndWorkDTO status);

	String selectLeave(StatusAndWorkDTO status);

	int insertWorkCount();

	int updateWorkCount();

	String workTypeB1();

	String workTypeB2();

	String workTypeB3();

	String workTypeB4();

	String workTypeB5();

	String workTypeB6();

	String workTypeB7();

	String workTypeB8();

  }
 
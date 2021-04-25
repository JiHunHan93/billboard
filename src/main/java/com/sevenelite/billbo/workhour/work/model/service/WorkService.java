
   package com.sevenelite.billbo.workhour.work.model.service;
   
import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;
   
   public interface WorkService {

	List<WorkDTO> selectWorkList(int no);

	boolean insertWorkInfo(WorkDTO workInfo);
	

	String selectWork(int userno);

	String selectCommute(StatusAndWorkDTO status);

	String selectLeave(StatusAndWorkDTO status);

	int updateWorkCount();

	String workTypeB1();

	String workTypeB2();

	String workTypeB3();

	String workTypeB4();

	String workTypeB5();

	String workTypeB6();

	String workTypeB7();

	String workTypeB8();

	boolean editWork(StatusAndWorkDTO status);

	List<StatusAndWorkDTO> selectStatusList();


   } 
  
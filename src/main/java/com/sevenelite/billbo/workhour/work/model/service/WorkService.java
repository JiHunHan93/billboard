
   package com.sevenelite.billbo.workhour.work.model.service;
   
import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;
   
   public interface WorkService {

	List<WorkDTO> selectWorkList(int no);

	boolean insertWorkInfo(WorkDTO workInfo);
	

	String selectWork();

	String selectCommute(StatusAndWorkDTO status);

	String selectLeave(StatusAndWorkDTO status);


   } 
  
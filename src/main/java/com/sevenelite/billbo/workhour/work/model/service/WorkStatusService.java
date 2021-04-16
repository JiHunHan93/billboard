
   package com.sevenelite.billbo.workhour.work.model.service;
   
   import java.util.Date;
import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
   
   public interface WorkStatusService {
   
   List<StatusAndWorkDTO> selectAllStatus();

   List<StatusAndWorkDTO> sequenceWork(int no);

    boolean registWork(StatusAndWorkDTO workList);

	boolean updateWork(StatusAndWorkDTO workList);

   
   }
  
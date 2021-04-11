
   package com.sevenelite.billbo.workhour.work.model.service;
   
   import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
   
   public interface WorkStatusService {
   
   List<StatusAndWorkDTO> selectListstatus();

   boolean registWork(StatusAndWorkDTO status);

   boolean updateWork(StatusAndWorkDTO status);
   
   }
  
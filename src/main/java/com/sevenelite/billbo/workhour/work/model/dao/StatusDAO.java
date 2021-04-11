
   package com.sevenelite.billbo.workhour.work.model.dao;
   
   import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
   
   public interface StatusDAO {
   
   List<StatusAndWorkDTO> selectAllStatus();

   int registWork(StatusAndWorkDTO status);

   boolean updateWork(StatusAndWorkDTO status);
   
   }
  
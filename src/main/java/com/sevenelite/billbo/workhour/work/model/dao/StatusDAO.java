
   package com.sevenelite.billbo.workhour.work.model.dao;
   
   import java.util.List;
   
   import com.sevenelite.billbo.workhour.work.model.dto.WorkStatusDTO;
   
   public interface StatusDAO {
   
   List<WorkStatusDTO> selectAllStatus();
   
   }
  
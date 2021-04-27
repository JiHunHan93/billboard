
   package com.sevenelite.billbo.workhour.work.model.dao;
   
   import java.util.Date;
import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
   
   public interface StatusDAO {
   
   List<StatusAndWorkDTO> selectAllStatus();

   int registWork(StatusAndWorkDTO workList);

   List<StatusAndWorkDTO> detailWork(int no);
   
   Date selectWorkDate(int userno);

   Date selectlwork();

   int updateWork(StatusAndWorkDTO workList);
   
   }
  

   package com.sevenelite.billbo.workhour.work.model.dao;
   
   import java.util.Date;
import java.util.List;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
   
   public interface StatusDAO {
   
   List<StatusAndWorkDTO> selectAllStatus();

   int registWork(StatusAndWorkDTO status);

   List<StatusAndWorkDTO> detailWork(int no);
   
   boolean updateWork(StatusAndWorkDTO status1);

   Date selectWorkDate(int userno);
   
   }
  
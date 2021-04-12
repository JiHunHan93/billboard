
   package com.sevenelite.billbo.workhour.work.model.service;
   
   import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
   
   public interface WorkStatusService {
   
   List<StatusAndWorkDTO> selectListstatus();

   boolean registWork(StatusAndWorkDTO status);


   List<StatusAndWorkDTO> sequenceWork(int no);

    boolean updateWork(UserDetailsVO loginNo);

   
   }
  
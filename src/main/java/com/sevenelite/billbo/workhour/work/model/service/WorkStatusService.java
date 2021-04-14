
   package com.sevenelite.billbo.workhour.work.model.service;
   
   import java.util.Date;
import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
   
   public interface WorkStatusService {
   
   List<StatusAndWorkDTO> selectListstatus();

   boolean registWork(StatusAndWorkDTO status, Date today);

   List<StatusAndWorkDTO> sequenceWork(int no);

   boolean updateWork(int MemberNo, int no);

int seqNo();

   
   }
  
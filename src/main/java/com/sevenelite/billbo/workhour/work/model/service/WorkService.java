
   package com.sevenelite.billbo.workhour.work.model.service;
   
   import java.util.Date;
import java.util.List;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.workhour.work.model.dto.StatusAndWorkDTO;
import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO;
   
   public interface WorkService {

	List<WorkDTO> selectWorkList(int no);

	Date selectCommute(int no);

	Date selectlwork(int no);



   } 
  
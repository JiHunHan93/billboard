 
   package com.sevenelite.billbo.workhour.main;
   
   import java.security.Principal; import java.util.List;
   
   import org.springframework.beans.factory.annotation.Autowired; import
   org.springframework.stereotype.Controller; import
   org.springframework.ui.Model; import
   org.springframework.web.bind.annotation.GetMapping;
   
   import com.sevenelite.billbo.workhour.work.model.dto.WorkStatusDTO; import
   com.sevenelite.billbo.workhour.work.model.dto.WorkTypeDTO; import
   com.sevenelite.billbo.workhour.work.model.service.WorkStatusService;
   
   @Controller public class WorkDetailController {
   
   private final WorkStatusService workStatusService;
   
   @Autowired public WorkDetailController(WorkStatusService service) {
   this.workStatusService = service; }
   
   @GetMapping("work/detail") public String workDetailController(Principal
   principal,Model model, WorkTypeDTO type) {
   
   List<WorkStatusDTO> statusList = workStatusService.selectListstatus(); {
   
   for(WorkStatusDTO status : statusList) { System.out.println(status); }
   model.addAttribute("statusList", statusList); principal.getName();
   System.out.println("관리자 : " + principal);
   System.out.println("==================================="); }
   
   
   return "workhour/workDetail";
   
      } 
   
   }
  
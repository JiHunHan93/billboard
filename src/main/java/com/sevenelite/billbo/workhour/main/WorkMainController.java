
   package com.sevenelite.billbo.workhour.main;
   
   import java.security.Principal; import java.util.List;
   
   import org.springframework.beans.factory.annotation.Autowired; 
   import org.springframework.stereotype.Controller; 
   import org.springframework.ui.Model; 
   import org.springframework.web.bind.annotation.GetMapping; 
   import org.springframework.web.bind.annotation.RequestMapping; 
   import com.sevenelite.billbo.workhour.work.model.dto.WorkDTO; 
   import com.sevenelite.billbo.workhour.work.model.service.WorkService;
   
   @Controller
   
   @RequestMapping("/") public class WorkMainController {
   
   private final WorkService workService;
   
   @Autowired public WorkMainController(WorkService workService) {
   this.workService = workService; }
   
   @GetMapping("work") public String workController(Model model,Principal principal ) {
   
   List<WorkDTO> workList = workService.selectWorkList(); {
   
   for(WorkDTO work : workList) { System.out.println(work); 
   }
   model.addAttribute("workList", workList); principal.getName();
   System.out.println("관리자 : " + principal);
   System.out.println("===========================================" + workList);
   
   } 
   return "workhour/workList"; }
 
   }
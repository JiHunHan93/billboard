package com.sevenelite.billbo.noticeboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sevenelite.billbo.noticeboard.model.dto.NoticeBoardDTO;
import com.sevenelite.billbo.noticeboard.model.service.NoticeBoardService;

@Controller
@RequestMapping("/noticeBoard/*")
public class NoticeBoardController {

   private final NoticeBoardService noticeBoardService;
   
   @Autowired
   public NoticeBoardController(NoticeBoardService noticeBoardService) {
      this.noticeBoardService = noticeBoardService;
   }
   
   
   @GetMapping("noticeBoard")
   public String selectNoticeBoardList(Model model) {
      
      List<NoticeBoardDTO> noticeBoardList = noticeBoardService.selectNoticeBoard();
      
      System.out.println("noticeBoardList :" + noticeBoardList);
      
      model.addAttribute("noticeBoardList", noticeBoardList);
      
      return "board/NoticeBoard";
      //폴더/파일명
   }
   
    @GetMapping("insert")
    public String insertNoticeBoard() {
    	
    	return "board/insertNoticeBoard";
    }
    
    public String registNoticeBoard(@ModelAttribute NoticeBoardDTO noticeBoardDTO,
    		RedirectAttributes redirect) {
    	
    	 if(!noticeBoardService.registNoticeBoard(noticeBoardDTO)) {
    		 redirect.addFlashAttribute("message", "게시글 등록 실패하였습니다.");
    	 }
    	 
    	 	redirect.addFlashAttribute("message", "게시글 등록 성공!");
    	 
		 return "board/NoticeBoard";
    	
    }
}
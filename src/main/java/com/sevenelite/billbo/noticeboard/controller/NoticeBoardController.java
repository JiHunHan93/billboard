package com.sevenelite.billbo.noticeboard.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
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
   
   @GetMapping("Bonus")
   public String selectNoticeBoardList(Model model) {
      
      List<NoticeBoardDTO> noticeBoardList = noticeBoardService.selectNoticeBoard();
      
      System.out.println("noticeBoardList :" + noticeBoardList);
      model.addAttribute("noticeBoardList", noticeBoardList);
      
      return "board/Bonus";
      //폴더/파일명
   }
   
    @GetMapping("insert")
    public String insertNoticeBoard() {
    	
    	return "board/NoticeBoardInsert";
    }
    
    @PostMapping("main")
    public String registNoticeBoard(@ModelAttribute NoticeBoardDTO noticeBoardDTO,
    		RedirectAttributes redirect, Model model) {
    		
    	 if(!noticeBoardService.registNoticeBoard(noticeBoardDTO)) {
    		 redirect.addFlashAttribute("message", "게시글 등록 실패하였습니다.");
    	 }
    	 
    	 	redirect.addFlashAttribute("message", "게시글 등록 성공!");
    	 	List<NoticeBoardDTO> noticeBoardList = noticeBoardService.selectNoticeBoard();
    	 	model.addAttribute("noticeBoardList", noticeBoardList);
    	 	
    	 
		 return "board/NoticeBoard";
    	
    }
    @GetMapping("noticeBoard/detail")
    @ResponseBody
    public ModelAndView detailNoticeBoard(HttpServletRequest request, HttpServletResponse response, Model model) {
    	 
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("board/NoticeBoardModify");
    	int no = Integer.parseInt(request.getParameter("no"));
    	
    	mv.addObject("no",no);
    	
    	System.out.println("no : " + no);
    	
    	int upCount = noticeBoardService.updateCount(no);
    	List<NoticeBoardDTO> noticeDetailInfo = noticeBoardService.detailNoticeBoard(no);
    	
    	model.addAttribute("noticeDetailInfo", noticeDetailInfo);
    	model.addAttribute("upCount", upCount);
    	
    	return mv;
    }
    
	/*
	 * @PostMapping("update") public String update(NoticeBoardDTO noticeBoardDTO,
	 * Model model, RedirectAttributes redirect) {
	 * 
	 * if(!noticeBoardService.updateNoticeBoard(noticeBoardDTO)) {
	 * redirect.addFlashAttribute("message", "게시물 수정 성공하였습니다!"); }
	 * redirect.addFlashAttribute("message", "게시물 수정 실패하였습니다!");
	 * 
	 * 
	 * return "redirect:/board/NoticeBoard"; }
	 */
}
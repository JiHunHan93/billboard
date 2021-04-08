package com.sevenelite.billbo.board.controller;

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

import com.sevenelite.billbo.board.model.dto.BoardDTO;
import com.sevenelite.billbo.board.model.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class FreeBoardController {

	private final BoardService boardService;

	@Autowired
	public FreeBoardController(BoardService boardService) {
		this.boardService = boardService;
	}

	@GetMapping("freeboard")
	public String selectFreeBoardList(Model model) {

		List<BoardDTO> boardList = boardService.selectBoard();
		model.addAttribute("boardList", boardList);
		System.out.println("sdad");
		return "board/FreeBoard";
	}

	@GetMapping("insert")
	public String insertBoard() {

		return "board/InsertFreeBoard";
	}

	@PostMapping("freeboard")
	public String registBoard(@ModelAttribute BoardDTO board, RedirectAttributes redirect, Model model) {

		/*
		 * String root =
		 * request.getSession().getServletContext().getRealPath("resources");
		 * System.out.println("root : " + root ); String filePath = root +
		 * "\\uploadFiles";
		 * 
		 * 
		 * File mkdir = new File(filePath); if(!mkdir.exists()) { mkdir.mkdirs(); }
		 * 
		 * String singleFile = request.getParameter("fileAttachment"); String
		 * originalName = singleFile.getO
		 */

		if (!boardService.registBoard(board)) {
			redirect.addFlashAttribute("message", "게시글등록실패하였습니다");
		}

		redirect.addFlashAttribute("message", "게시글 등록성공");
		List<BoardDTO> boardList = boardService.selectBoard();

		model.addAttribute("boardList", boardList);
		return "board/FreeBoard";
	}

	@GetMapping("board/detail")
	@ResponseBody
	public ModelAndView detailBoard(HttpServletRequest request, HttpServletResponse response, Model model) {

		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("board/BoardModify");
		 int no = Integer.parseInt(request.getParameter("no"));
	
		 
		 mv.addObject("no",no);
		
		System.out.println("no : " + no);
	
	     int upCount = boardService.updateCount(no);
		List<BoardDTO> detailInfo = boardService.detailBoard(no);
		
		System.out.println(" de" +detailInfo);
		System.out.println("upCount : " + upCount);
		model.addAttribute("detailInfo", detailInfo);
		model.addAttribute("upCount", upCount);
		
		
		
		return mv;
		 

	}

}

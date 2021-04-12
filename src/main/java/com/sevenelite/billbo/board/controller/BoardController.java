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
import com.sevenelite.billbo.noticeboard.model.dto.NoticeBoardDTO;
import com.sevenelite.billbo.noticeboard.model.service.NoticeBoardService;

@Controller
@RequestMapping("/*")
public class BoardController {

	private final BoardService boardService;
	private final NoticeBoardService noticeBoardService;

	@Autowired
	public BoardController(BoardService boardService, NoticeBoardService noticeBoardService) {
		this.boardService = boardService;
		this.noticeBoardService = noticeBoardService;
	}

	@GetMapping("board")
	public String selectBoardList(Model model) {

		List<BoardDTO> boardList = boardService.selectBoard();
		System.out.println("boardList :" + boardList);
		model.addAttribute("boardList", boardList);
		List<NoticeBoardDTO> noticeBoardList = noticeBoardService.selectNoticeBoard();
	    System.out.println("noticeBoardList :" + noticeBoardList);
	    model.addAttribute("noticeBoardList", noticeBoardList);
		
		return "board/Board";
	}

	@GetMapping("board/insert")
	public String insertBoard() {
		return "board/BoardInsert";
	}

	@PostMapping("board")
	public String registBoard(@ModelAttribute BoardDTO board, RedirectAttributes redirect, Model model) {
	
		if (!boardService.registBoard(board)) {
			redirect.addFlashAttribute("message", "게시글등록실패하였습니다");
		}

		redirect.addFlashAttribute("message", "게시글 등록성공");
		
		List<BoardDTO> boardList = boardService.selectBoard();
		model.addAttribute("boardList", boardList);
		
		List<NoticeBoardDTO> noticeBoardList = noticeBoardService.selectNoticeBoard();
	 	model.addAttribute("noticeBoardList", noticeBoardList);

		return "board/Board";
	}

	@GetMapping("board/detail")
	@ResponseBody
	public ModelAndView detailBoard(HttpServletRequest request, HttpServletResponse response, Model model) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/BoardDetail");
		int no = Integer.parseInt(request.getParameter("no"));

		mv.addObject("no",no);
		System.out.println("no : " + no);

		List<BoardDTO> detailInfo = boardService.detailBoard(no);
		System.out.println("freedetail" + detailInfo);
		System.out.println("freedetail" + detailInfo.size());
		if(detailInfo.size() != 0) {
			int upCount = boardService.updateCount(no);
	
			System.out.println("freedetail" + detailInfo);
			System.out.println("upCount : " + upCount);
			model.addAttribute("detailInfo", detailInfo);
			model.addAttribute("upCount", upCount);
		} else if(detailInfo.size() == 0) {
			List<NoticeBoardDTO> notiDetailInfo = noticeBoardService.detailNoticeBoard(no);
			
	    	if(notiDetailInfo.size() != 0) {
	    	int upCount = noticeBoardService.updateCount(no);
	    	System.out.println("notidetail" + notiDetailInfo);
	    	System.out.println("upCount : " + upCount);
	    	model.addAttribute("detailInfo", notiDetailInfo);
	    	model.addAttribute("upCount", upCount);
	    	}
		}
		return mv;
	}
	
	@GetMapping("board/delete")
	public ModelAndView deleteBoard(@ModelAttribute BoardDTO boardDTO, Model model,  RedirectAttributes redirect, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		int no = Integer.parseInt(request.getParameter("no"));
		
		int deleteInfo = boardService.deleteBoard(no);
		System.out.println(deleteInfo);
		mv.setViewName("redirect:http://127.0.0.1:8001/billbo/board");
		
		return mv;
	}
	
	@GetMapping(value="board/modify", produces="application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView modifyBoard(@ModelAttribute BoardDTO boardDTO, Model model, HttpServletRequest request, RedirectAttributes rttr) {
	    
		boardService.updateBoard(boardDTO);
		noticeBoardService.updateNoticeBoard(boardDTO);
		ModelAndView mv = new ModelAndView();
		
		List<BoardDTO> boardList = boardService.selectBoard();
		if(boardList.size() != 0) {
			model.addAttribute("boardList", boardList);
		} else if(boardList.size() == 0) {
			List<NoticeBoardDTO> noticeBoardList = noticeBoardService.selectNoticeBoard();
			if(boardList.size() != 0) {
				model.addAttribute("noticeBoardList", noticeBoardList);
			}
		}
	    mv.setViewName("redirect:http://127.0.0.1:8001/billbo/board");
	    
		return mv;
	}

}
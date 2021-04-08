//package com.sevenelite.billbo.board.controller;
//
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import com.sevenelite.billbo.board.model.dto.BoardDTO;
//import com.sevenelite.billbo.board.model.service.BoardService;
//
//@Controller
//@RequestMapping("/board/*")
//public class FreeBoardController {
//
//	private final BoardService boardService;
//
//	@Autowired
//	public FreeBoardController(BoardService boardService) {
//		this.boardService = boardService;
//	}
//
//
//	@GetMapping("freeboard")
//	public String selectFreeBoardList(Model model) {
//
//		List<BoardDTO> boardList = boardService.selectBoard();
//
//		model.addAttribute("boardList", boardList);
//		System.out.println("sdad");
//		return "board/Board";
//	}
//
//	@GetMapping("insert")
//	public String insertBoard() {
//
//		return "board/InsertFreeBoard";
//	}
//
//	@PostMapping("freeboard")
//	public String registBoard(@ModelAttribute BoardDTO board, RedirectAttributes redirect, Model model) {
//
//		/*
//		 * String root =
//		 * request.getSession().getServletContext().getRealPath("resources");
//		 * System.out.println("root : " + root ); String filePath = root +
//		 * "\\uploadFiles";
//		 * 
//		 * 
//		 * File mkdir = new File(filePath); if(!mkdir.exists()) { mkdir.mkdirs(); }
//		 * 
//		 * String singleFile = request.getParameter("fileAttachment"); String
//		 * originalName = singleFile.getO
//		 */
//
//		if(!boardService.registBoard(board)) {
//			redirect.addFlashAttribute("message", "게시글등록실패하였습니다");
//		}
//
//		redirect.addFlashAttribute("message", "게시글 등록성공");
//		List<BoardDTO> boardList = boardService.selectBoard();
//
//		model.addAttribute("boardList", boardList);
//		return "board/Board";
//	}
//
//	@GetMapping("detail")
//	public String detailBoard(HttpServletRequest request, HttpServletResponse response) {
//
//		/*
//		 * int no = Integer.parseInt(request.getParameter("no")); BoardDTO detailInfo =
//		 * boardService.detailBoard(no);
//		 */
//		return "board/BoardModify";
//	}
//
//}

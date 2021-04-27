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
@RequestMapping("/*")
public class BoardController {

	private final BoardService boardService;

	@Autowired
	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}

	@GetMapping("board")
	public String selectBoardList(Model model) {

		List<BoardDTO> boardList = boardService.selectBoard();   // 자유게시판 조회 매퍼 읽은 후 값을 리스트에 저장
		System.out.println("boardList :" + boardList);
		model.addAttribute("boardList", boardList);              // 자유게시판 조회 정보를 담은 리스트를 JSP에서 사용가능하게 설정
		
		List<BoardDTO> empBoardList = boardService.selectEmpBoard();     // 인사게시판 조회 매퍼 읽은 후 값을 리스트에 저장
		System.out.println("empBoardList :" + empBoardList);
		model.addAttribute("empBoardList", empBoardList);                // 인사게시판 조회 정보를 담은 리스트를 JSP에서 사용가능하게 설정
		
		List<BoardDTO> noticeBoardList = boardService.selectNoticeBoard();     // 공지게시판 조회 매퍼 읽은 후 값을 리스트에 저장
	    System.out.println("noticeBoardList :" + noticeBoardList);
	    model.addAttribute("noticeBoardList", noticeBoardList);                // 공지게시판 조회 정보를 담은 리스트를 JSP에서 사용가능하게 설정
		
		return "board/Board";
	}

	@GetMapping("board/detail")
	public ModelAndView detailBoard(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/BoardDetail");
		int no = Integer.parseInt(request.getParameter("no"));
		
		mv.addObject("no",no);
		System.out.println("no : " + no);
		
		List<BoardDTO> detailInfo = boardService.detailBoard(no); //자유게시판의 상세정보를 담기위해 매퍼로 사번을 담아 전송
		System.out.println("freedetail" + detailInfo);
		System.out.println("freedetail" + detailInfo.size());
		if(detailInfo.size() != 0) { //자유게시판 조회 값을 리스트에 담은 경우
			int upCount = boardService.updateCount(no); // 조회수를 올리기 위한 정수형 변수에 값을담기위해 매퍼로 전송
			System.out.println("freedetail" + detailInfo); 
			System.out.println("upCount : " + upCount);
			model.addAttribute("detailInfo", detailInfo); // 받아온 조회 값을 JSP에서 사용가능하게 설정
			model.addAttribute("upCount", upCount); // 조회수를 증가 시킨 후 JSP에서 값을 사용할 수 있게 설정
		} else if(detailInfo.size() == 0) { // 자유게시판 조회 후 리스트에 값을 담지 못한 경우(게시판 타입이 '자유'가 아닌경우)
			System.out.println("자유게시판 상세 조회값 없음");
			List<BoardDTO> empDetailInfo = boardService.detailEmpBoard(no); //인사게시판 상세정보를 조회하기 위해 매퍼로 사번을담아 전송
			if(empDetailInfo.size() != 0) { // 인사게시판 상세 조회 결과값이 리스트에 담긴경우
				int upCount = boardService.updateCount(no); //조회수를 올리기 위한 정수형 변수에 값을담기위해 매퍼로 전송
				System.out.println("empDetailInfo" + empDetailInfo);
				System.out.println("upCount : " + upCount);
				model.addAttribute("detailInfo", empDetailInfo);  // 받아온 조회 값을 JSP에서 사용가능하게 설정
				model.addAttribute("upCount", upCount);  // 조회수를 증가 시킨 후 JSP에서 값을 사용할 수 있게 설정
			} else if(empDetailInfo.size() == 0) { // 인사게시판 조회 후 리스트에 값을 담지 못한 경우(게시판 타입이 '인사'가 아닌경우)
				List<BoardDTO> notiDetailInfo = boardService.detailNoticeBoard(no);  //공지게시판 상세정보를 조회하기 위해 매퍼로 사번을담아 전송
				if(notiDetailInfo.size() != 0) {  // 공지게시판 상세 조회 결과값이 리스트에 담긴경우
					int upCount = boardService.updateCount(no);  // 조회수를 올리기 위한 정수형 변수에 값을담기위해 매퍼로 전송
					System.out.println("notidetail" + notiDetailInfo);
					System.out.println("notidetail" + notiDetailInfo);
					System.out.println("upCount : " + upCount);
					model.addAttribute("detailInfo", notiDetailInfo);  // 받아온 조회 값을 JSP에서 사용가능하게 설정
					model.addAttribute("upCount", upCount);  // 조회수를 증가 시킨 후 JSP에서 값을 사용할 수 있게 설정
				} else {  // 세가지 타입 모두 값을 담지 못한 경우
					System.out.println("게시물 조회결과를 찾을 수 없음");
				}
			}
		}
		return mv;
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
		
		List<BoardDTO> empBoardList = boardService.selectEmpBoard();
		model.addAttribute("empBoardList", empBoardList);
		
		List<BoardDTO> noticeBoardList = boardService.selectNoticeBoard();
		model.addAttribute("noticeBoardList", noticeBoardList);
		
		return "board/Board";
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
	    
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:http://127.0.0.1:8001/billbo/board");
		
		boardService.updateBoard(boardDTO);
		
		List<BoardDTO> boardList = boardService.selectBoard();
		model.addAttribute("boardList", boardList);
		List<BoardDTO> empBoardList = boardService.selectEmpBoard();
		model.addAttribute("empBoardList", empBoardList);
		List<BoardDTO> noticeBoardList = boardService.selectNoticeBoard();
		model.addAttribute("noticeBoardList", noticeBoardList);
	    
		return mv;
	}

}
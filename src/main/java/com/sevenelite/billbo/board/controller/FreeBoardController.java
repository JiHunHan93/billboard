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
		
		return "board/FreeBoard";
	}

	@GetMapping("insert")
	public String insertBoard() {

		return "board/InsertFreeBoard";
	}

	@PostMapping("freeboard")
	public String registBoard(@ModelAttribute BoardDTO board, RedirectAttributes redirect, Model model) {

	
		if (!boardService.registBoard(board)) {
			redirect.addFlashAttribute("message", "게시글등록실패하였습니다");
		}

		redirect.addFlashAttribute("message", "게시글 등록성공");
		List<BoardDTO> boardList = boardService.selectBoard();

		model.addAttribute("boardList", boardList);
		return "board/FreeBoard";
	}

	@GetMapping("detail")
	@ResponseBody
	public ModelAndView detailBoard(HttpServletRequest request, HttpServletResponse response, Model model) {

		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("board/BoardModify");
		 int no = Integer.parseInt(request.getParameter("no"));
	
		 
		 mv.addObject("no",no);
		
		System.out.println("no : " + no);
	
	     int upCount = boardService.updateCount(no);
		List<BoardDTO> detailInfo = boardService.detailBoard(no);
		
		System.out.println("de" +detailInfo);
		System.out.println("upCount : " + upCount);
		model.addAttribute("detailInfo", detailInfo);
		model.addAttribute("upCount", upCount);
		
		return mv;
	}
	
	@GetMapping("delete")
	public ModelAndView deleteBoard(@ModelAttribute BoardDTO boardDTO, Model model,  RedirectAttributes redirect, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		int no = Integer.parseInt(request.getParameter("no"));
		System.out.println("no : ==================================================" + no + no);
		
		int deleteInfo = boardService.deleteBoard(no);
//		List<BoardDTO> deleteInfo = boardService.deleteBoard(no);
		System.out.println("==================" + deleteInfo);
		List<BoardDTO> boardList = boardService.selectBoard();
		mv.setViewName("redirect:board");
		
		return mv;
	}
	
	@GetMapping(value="modify", produces="application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView modifyBoard(@ModelAttribute BoardDTO boardDTO, Model model, HttpServletRequest request, RedirectAttributes rttr) {
	    
//		Gson gson = new GsonBuilder().create();
//		
//		   /* 0. Ajax로 전송받은 key, value 확인 */
//        Map<String,String[]> paymentInfo = new TreeMap<String,String[]>(request.getParameterMap());
//
//		
//		  for(String key : paymentInfo.keySet()) {
//	            String[] value = paymentInfo.get(key);
//
//	            for(int i=0; i<value.length; i++) {
//	               System.out.println((key + " : " + value[i]));
//	            }
//	         }
//		  
//		  String a = ((String[])paymentInfo.get("jihun[3][value]"))[0];
//
//		  System.out.println("변수에 담기 : " + a);
//		  
//		
		if(boardService.updateBoard(boardDTO)) {
			rttr.addFlashAttribute("message", "게시글등록성공하였습니다");
		};
		ModelAndView mv = new ModelAndView();
	
//	    mv.setViewName("redirect:board/detail?no=" + boardDTO.getNo());
	    List<BoardDTO> boardList = boardService.selectBoard();
	    model.addAttribute("boardList", boardList);
	    mv.setViewName("redirect:board");
	    

	    
		return mv;
	}

}
